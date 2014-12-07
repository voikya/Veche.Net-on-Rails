module Lexicons
  class LexiconController < ApplicationController
    layout 'lexicon'
    before_filter :set_language

    # See Lexicon model for detailed descriptions
    SEARCH_PARAM_WHITELIST = [
      # String parameters
      :word,
      :transliteration,
      :definition,
      :part_of_speech,
      :root,
      :any,

      # Boolean parameters
      :exact,
      :whole_word,

      # Referential parameters
      :related_to
    ]

    def index
      search_params = params.keep_if {|k, v| SEARCH_PARAM_WHITELIST.include?(k.to_sym)}
      @entries = @lexicon.scope_entries(search_params)
    end

    def show
      @entry = @lexicon.entry(params[:word])
    end

    private

    def set_language
      @language = params[:language].to_sym
      @lexicon = Lexicon.find_by_language(@language)
    end
  end
end
