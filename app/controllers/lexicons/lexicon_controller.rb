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
      @search_params = search_params
      @entries = @lexicon.scope_entries(@search_params)
      puts @search_params.inspect
    end

    def show
      @search_params = search_params
      @entry = @lexicon.entry(params[:lexeme])
      @entries = @lexicon.scope_entries(@search_params)
    end

    private

    def set_language
      @language = params[:language].to_sym
      @lexicon = Lexicon.find_by_language(@language)
    end

    def search_params
      params.symbolize_keys.keep_if {|k, v| SEARCH_PARAM_WHITELIST.include?(k)}
    end
  end
end
