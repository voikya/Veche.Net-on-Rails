module SoundChanges
  POSITION_INDICATOR_TOKEN = '_'.freeze
  WORD_BOUNDARY_TOKEN      = '#'.freeze

  class Parser
    # Instance must be initialized with a set of phoneme
    # objects that define what can be parsed
    def initialize(phonemes)
      @phonemes = phonemes
    end

    def tokenize(str)
      if associative?(str)
        # If the string is associative (e.g., of the form "p, t, k"), listing
        # out multiple potential values, generate an AssociativeSet.
        parse_associative(str.dup)
      else
        # Iterate through the string, parsing out tokens, until there is
        # nothing left in the string to parse
        parse_tokens(str.dup)
      end
    end

    private

    def associative?(str)
      str.gsub(/\[[^\]]*\]/, "").count(',') > 0
    end

    def parse_associative(str)
      set = str.split(',').map do |s|
        s = s.strip
        @phonemes.find { |p| p.symbol == s }
      end
      [SoundChanges::AssociativeSet.new(set)]
    end

    def parse_tokens(str)
      tokens = []
      loop do
        break if str.length.zero?
        case str[0]
          when '['
            # Feature token
            _, feature_str, str = str.partition(/\[[^\]]*\]/)
            feature = SoundChanges::FeatureSet.parse(feature_str)
            tokens << feature
          when '_'
            # Position indicator token
            str[0] = ""
            tokens << POSITION_INDICATOR_TOKEN
          when '#'
            # Word boundary token
            str[0] = ""
            tokens << WORD_BOUNDARY_TOKEN
          else
            # Symbol token
            tokens << parse_symbol(str)
            str = str[tokens.last.symbol.length..-1]
        end
      end
      tokens
    end

    def parse_symbol(str)
      token = ""
      last_exact_match = nil
      # A symbol may be multiple characters in length (e.g., "ch" or "tʲ").
      # This parser takes a greedy approach, iterating with longer and longer
      # strings until it can no longer find a matching Phoneme object.
      loop do
        # Add one character to the current search
        token += str[token.length]
        possible_phonemes = @phonemes.select { |p| p.symbol =~ /^#{token}/ }
        if possible_phonemes.length == 1
          # Only one match, this is the token
          return possible_phonemes.first
        elsif possible_phonemes.length == 0
          # Zero matches, revert to the last known match
          if last_exact_match
            return last_exact_match
          else
            raise "No such phoneme <#{str[0]}> defined"
          end
        end
        # If multiple matches, loop again
        if exact_match = possible_phonemes.find { |p| p.symbol == token }
          last_exact_match = exact_match
        end
      end
    end
  end
end
