module Lexicons
  class LexiconController < ApplicationController
    layout 'lexicon'
    before_filter :set_language
    before_filter :preprocess_search_params

    # See Lexicon model for detailed descriptions
    SEARCH_STRING_PARAMS = [
      :word,
      :transliteration,
      :definition,
      :part_of_speech,
      :root,
      :root_word,
      :root_transliteration,
      :derivatives,
      :any
    ]
    SEARCH_BOOLEAN_PARAMS = [:exact, :whole_word]
    SEARCH_REFERENTIAL_PARAMS = [:related_to]
    SEARCH_PARAM_WHITELIST = [SEARCH_STRING_PARAMS, SEARCH_BOOLEAN_PARAMS, SEARCH_REFERENTIAL_PARAMS, :search].flatten

    def init
      @data = {
        language: @lexicon,
        structure: @lexicon.lexicon_class.structure_definition,
        lexemeField: @lexicon.lexicon_class.indexed_column,
        entryCount: @lexicon.record_count,
        basePath: lexicon_path(:language => @language),
        admin: is_admin?
      }
    end

    def index
      render :json => @lexicon.scope_entries(search_params).entries
    end

    def show
      render :json => @lexicon.entry(params[:slug])
    end

    def show_morphology
      render :text => @lexicon.entry(params[:slug]).morphology_formatter.as_html
    end

    def new
      require_authorization! or return
      render :json => @lexicon.lexicon_class.new.to_edit_hash
    end

    def create
      require_authorization! or return
      fields = params.reduce({}) do |memo, (k, v)|
        memo[k.gsub('-', '_').to_sym] = v
        memo
      end.reject do |k,v|
        !@lexicon.lexicon_class.fields.include?(k)
      end
      @entry = @lexicon.lexicon_class.create fields
      render :json => @entry.to_read_hash
    end

    def update
      require_authorization! or return
      fields = params.reduce({}) do |memo, (k, v)|
        memo[k.gsub('-', '_').to_sym] = v
        memo
      end.reject do |k,v|
        !@lexicon.lexicon_class.fields.include?(k)
      end
      @entry = @lexicon.entry(params[:slug])
      @entry.update_attributes fields
      render :json => @entry
    end

    private

    def set_language
      @language = params[:language].to_sym
      @lexicon = Lexicon.find_by_language(@language)
    end

    def preprocess_search_params
      SEARCH_STRING_PARAMS.each do |param|
        if search_params[param].present?
          case params["#{param}_opts"]
            when "contains" then @search_params[param] = "*#{@search_params[param]}*"
            when "begins_with" then @search_params[param] = "#{@search_params[param]}*"
            when "ends_with" then @search_params[param] = "*#{@search_params[param]}"
          end

          # If any advanced options are given, ensure the basic search is disabled
          @search_params.delete :search
        end
      end
    end

    def search_params
      @search_params ||= params.symbolize_keys.keep_if do |k, v|
        SEARCH_PARAM_WHITELIST.include?(k) && v.present?
      end
    end
  end
end
