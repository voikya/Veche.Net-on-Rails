module Lexicons
  class LexiconController < ApplicationController
    layout 'lexicon'
    before_filter :set_language
    before_filter :set_display_options

    # See Lexicon model for detailed descriptions
    SEARCH_PARAM_WHITELIST = [
      # String parameters
      :word,
      :transliteration,
      :definition,
      :part_of_speech,
      :root,
      :search,
      :any,

      # Boolean parameters
      :exact,
      :whole_word,

      # Referential parameters
      :related_to
    ]

    def index
      @entries = @lexicon.scope_entries(search_params)
    end

    def show
      @entry = @lexicon.entry(params[:lexeme])
      @entries = @lexicon.scope_entries(search_params)
    end

    private

    def set_language
      @language = params[:language].to_sym
      @lexicon = Lexicon.find_by_language(@language)
    end

    def set_display_options
      @show_partial_matches = search_params.include? :search
    end

    def search_params
      @search_params ||= params.symbolize_keys.keep_if do |k, v|
        SEARCH_PARAM_WHITELIST.include?(k)
      end
    end
  end
end
