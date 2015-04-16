module Lexicons
  class LexiconController < ApplicationController
    layout 'lexicon'
    before_filter :set_language
    before_filter :preprocess_search_params
    before_filter :set_display_options

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

    def index
      @lexicon.scope_entries(search_params)

      respond_to do |format|
        format.html
        format.json { render :json => @lexicon.entries }
      end
    end

    def new
      @entry = @lexicon.lexicon_class.new
      @entry.morphology_table = @entry.morphology_hash
      render :edit
    end

    def create
      entry = @lexicon.lexicon_class.create_entry(params)
      redirect_to lexicon_entry_path(:language => @language, :slug => entry.slug)
    end

    def show
      @entry = @lexicon.entry(params[:slug])
      @lexicon.scope_entries(search_params)
      @cross_refs = @entry.cross_references
      if @entry.respond_to?(:morphology) && @entry.morphology
        partial = "lexicons/lexicon/morphology/" +
                  @language.downcase.to_s +
                  "_" +
                  @entry.morphology.category.to_s.pluralize
        @entry.morphology_table = render_to_string :partial => partial, :locals => {:m => @entry.morphology.generate!}
      end

      respond_to do |format|
        format.html
        format.json { render :json => @entry }
      end
    end

    def edit
      @entry = @lexicon.entry(params[:slug])
      @lexicon.scope_entries(search_params)
      @cross_refs = @entry.cross_references
      if @entry.respond_to?(:morphology)
        @entry.morphology_table = @entry.morphology_hash
      end
    end

    def update
      @entry = @lexicon.entry(params[:slug])
      @entry.update_entry(params)
      render :show
    end

    private

    def set_language
      @language = params[:language].to_sym
      @lexicon = Lexicon.find_by_language(@language)
    end

    def set_display_options
      @show_partial_matches = search_params.include? :search
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
