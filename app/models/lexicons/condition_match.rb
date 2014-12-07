module Lexicons
  class ConditionMatch
    def initialize(opts = {})
      @formatter = opts[:formatter]
      @text = opts[:text]
      @range = opts[:range]
    end

    # True if the search term matches the token exactly.
    # E.g., searching for "thought" will match the token "thought",
    # but not the token "deep in thought" or "thoughtful".
    def exact?
      @formatter.tokenize.flatten.include?(@text[@range])
    end

    # True if the search term corresponds to a full word.
    # E.g., searching for "thought" will match the tokens "thought"
    # or "deep in thought", but not the token "thoughtful"
    def whole_word?
      @text.split(/\p{^Word}+/).select(&:present?).include?(@text[@range])
    end
  end
end
