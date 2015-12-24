module SoundChanges
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

    def run(word)
      phonemes = sound_change_group.language.phonemes.all
      parser = SoundChanges::Parser.new(phonemes)

      # Split the sound change into simple find-and-replace operations
      decompose.each do |sc|
        # Splice the input into the environment to get the phoneme sub-array
        # to match.
        input = parser.tokenize(sc.input)
        env = parser.tokenize(sc.environment)
        idx_in_env = env.index(SoundChanges::POSITION_INDICATOR_TOKEN)
        env[idx_in_env] = input
        env.flatten!

        # Get the starting indices of each matching instance of the combined
        # input/environment array
        matching_indices = word.each_index.select { |i| word[i].symbol == env[0].symbol }
        (1...env.length).each do |offset|
          break if matching_indices.empty?
          matching_indices.select! do |i|
            word[i + offset] == env[offset]
          end
        end

        # Splice the output phoneme array into each matching environment
        matching_indices.each do |i|
          word[i + idx_in_env, input.length] = parser.tokenize(sc.output)
        end
      end

      word
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
      SoundChanges::Parser.new(phonemes).tokenize(string_to_parse)
    end

    def decompose_features(tokens)
      phonemes = sound_change_group.language.phonemes.all
      tokens.reduce([""]) do |output, current_token|
        case current_token
          when SoundChanges::Phoneme
            output.map! { |s| s += current_token.symbol }
          when SoundChanges::POSITION_INDICATOR_TOKEN
            output.map! { |s| s += "_" }
          when SoundChanges::WORD_BOUNDARY_TOKEN
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
