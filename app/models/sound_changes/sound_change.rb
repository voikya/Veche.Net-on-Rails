module SoundChanges
  POSITION_INDICATOR_TOKEN = '_'.freeze
  WORD_BOUNDARY_TOKEN      = '#'.freeze

  class SoundChange < ActiveRecord::Base
    self.table_name = 'sca_sound_changes'

    attr_accessible :input, :output, :environment, :order

    belongs_to :sound_change_group, :class_name  => SoundChanges::SoundChangeGroup,
                                    :foreign_key => :group_id

    def as_json(opts={})
      {
        :id => id,
        :input => input,
        :output => output,
        :environment => environment,
        :order => order
      }
    end

    def to_s
      "#{input} → #{output} / #{environment}"
    end

    def decompose
      parsed_input = tokenize(:input)
      parsed_output = tokenize(:output)

      sc = if associative?(input) && associative?(output)
        # p, t, k > b, d, g / _
        input_map = decompose_features(parsed_input)
        output_map = decompose_features(parsed_output)
        input_map.zip(output_map).map do |i,o|
          SoundChanges::SoundChange.new(input: i, output: o)
        end
      elsif parsed_output.length == 1 && parsed_output.first.is_a?(SoundChanges::FeatureSet)
        # p, t, k > [+voice] / _
        # [-voice] > [+voice] / _
        if parsed_input.first.is_a?(SoundChanges::FeatureSet)
          phonemes = sound_change_group.language.phonemes.all
          matching = phonemes.select { |p| p.is?(parsed_input.first.to_s) }
          parsed_input = [SoundChanges::AssociativeSet.new(matching).sorted]
        end
        input_map = decompose_features(parsed_input)
        output_map = decompose_features([parsed_input.first.apply_features(parsed_output.first)])
        input_map.zip(output_map).map do |i,o|
          SoundChanges::SoundChange.new(input: i, output: o)
        end
      else
        # p > b / _
        input_map = decompose_features(parsed_input)
        output_map = decompose_features(parsed_output)
        input_map.product(output_map).map do |i,o|
          SoundChanges::SoundChange.new(input: i, output: o)
        end
      end

      env_map = decompose_features(tokenize :environment)

      sc.product(env_map).map do |s,e|
        SoundChanges::SoundChange.new(
          :input => s.input,
          :output => s.output,
          :environment => e
        )
      end
    end

    # Returns true if this change is of the type a, b, c > x, y, z / _
    # or a, b, c > [+change] / _ (i.e., where the input and optionally
    # output represent multiple values rather than sequence values)
    #
    # If an argument string is given, returns whether that string itself
    # represents an associative value; otherwise returns where this
    # sound change has any associative values.
    def associative?(str=nil)
      if str
        str.gsub(/\[[^\]]*\]/, "").count(',') > 0
      else
        input.gsub(/\[[^\]]*\]/, "").count(',') > 0
      end
    end

    private

    def tokenize(field)
      raise ArgumentError unless %i(input output environment).include?(field)
      string_to_parse = send(field)
      phonemes = sound_change_group.language.phonemes.all
      features = Feature.all
      tokens = []

      # Associative and non-associative strings are mutually exclusive
      if associative?(string_to_parse)
        # If the string is associative (e.g., of the form "p, t, k"), listing
        # out multiple potential values, generate an AssociativeSet.
        set = string_to_parse.split(',').map do |str|
          str = str.strip
          phonemes.find { |p| p.symbol == str }
        end
        tokens << SoundChanges::AssociativeSet.new(set)
      else
        # Iterate through the string, parsing out tokens, until there is
        # nothing left int he string to parse
        loop do
          break if string_to_parse.length.zero?
          case string_to_parse[0]
            when '['
              # Feature token
              _, feature_str, string_to_parse = string_to_parse.partition(/\[[^\]]*\]/)
              feature = SoundChanges::FeatureSet.parse(feature_str)
              tokens << feature
            when '_'
              # Position indicator token
              string_to_parse[0] = ""
              tokens << POSITION_INDICATOR_TOKEN
            when '#'
              # Word boundary token
              string_to_parse[0] = ""
              tokens << WORD_BOUNDARY_TOKEN
            else
              # Symbol token
              token = ""
              last_exact_match = nil
              # A symbol may be multiple characters in length (e.g., "ch" or "tʲ").
              # This parser takes a greedy approach, iterating with longer and longer
              # strings until it can no longer find a matching Phoneme object.
              loop do
                # Add one character to the current search
                token += string_to_parse[token.length]
                possible_phonemes = phonemes.select { |p| p.symbol =~ /^#{token}/ }
                if possible_phonemes.length == 1
                  # Only one match, this is the token
                  tokens << possible_phonemes.first
                  break
                elsif possible_phonemes.length == 0
                  # Zero matches, revert to the last known match
                  if last_exact_match
                    tokens << last_exact_match
                    break
                  else
                    raise "No such phoneme <#{string_to_parse[0]}> defined"
                  end
                end
                # If multiple matches, loop again
                if exact_match = possible_phonemes.find { |p| p.symbol == token }
                  last_exact_match = exact_match
                end
              end
              # Remove appropriate substring corresponding to the matching token
              # from the string left to parse
              string_to_parse = string_to_parse[tokens.last.symbol.length..-1]
          end
        end
      end
      tokens
    end

    def decompose_features(tokens)
      phonemes = sound_change_group.language.phonemes.all
      tokens.reduce([""]) do |output, current_token|
        case current_token
          when SoundChanges::Phoneme
            output.map! { |s| s += current_token.symbol }
          when POSITION_INDICATOR_TOKEN
            output.map! { |s| s += "_" }
          when WORD_BOUNDARY_TOKEN
            output.map! { |s| s += "#" }
          when SoundChanges::FeatureSet
            matches = phonemes.select { |p| p.is?(current_token.to_s) }
            new_output = []
            matches.each do |phoneme|
              new_output += output.map { |s| s += phoneme.symbol }
            end
            output = new_output
          when SoundChanges::AssociativeSet
            output = current_token.symbol_set
        end
        output
      end
    end
  end
end
