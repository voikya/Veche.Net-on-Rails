module Grammars
  class NovegradianController < ApplicationController
    layout 'grammar'
    before_filter :set_context

    @@pages = [
      {:index => 'a', :doc => 'foreword',             :title => 'Foreword'},
      {:index => 'b', :doc => 'abbreviations',        :title => 'Abbreviations'},
      {:index => 1,   :doc => 'background',           :title => 'Background'},
      {:index => 2,   :doc => 'phonology',            :title => 'Phonology'},
      {:index => 3,   :doc => 'writing',              :title => 'Writing'},
      {:index => 4,   :doc => 'verbalmorphology',     :title => 'Verbal Morphology'},
      {:index => 5,   :doc => 'nominalmorphology',    :title => 'Nominal Morphology'},
      {:index => 6,   :doc => 'adjectivalmorphology', :title => 'Adjectival Morphology'},
      {:index => 7,   :doc => 'numerals',             :title => 'Numerals'},
      {:index => 8,   :doc => 'pronouns',             :title => 'Pronouns'},
      {:index => 9,   :doc => 'names',                :title => 'Names'},
      {:index => 10,  :doc => 'derivation',           :title => 'Derivational Morphology'},
      {:index => 11,  :doc => 'verbsyntax',           :title => 'Verbal Syntax'},
      {:index => 12,  :doc => 'nounsyntax',           :title => 'Nominal Syntax'},
      {:index => 13,  :doc => 'adjectivesyntax',      :title => 'Adjectival and Adverbial Syntax'},
      {:index => 14,  :doc => 'topicalization',       :title => 'Topicalization'},
      {:index => 15,  :doc => 'pronominalsyntax',     :title => 'Pronominal Syntax'},
      {:index => 16,  :doc => 'prepositions',         :title => 'Prepositions'},
      {:index => 17,  :doc => 'conjunctions',         :title => 'Clauses and Conjunctions'},
      {:index => 18,  :doc => 'questions',            :title => 'Questions'},
      {:index => 19,  :doc => 'reportedspeech',       :title => 'Reported Speech'},
      {:index => 20,  :doc => 'discoursemarkers',     :title => 'Discourse Markers'},
      {:index => 21,  :doc => 'emphasis',             :title => 'Emphasis and Word Order'},
      {:index => 22,  :doc => 'spoken',               :title => 'Spoken Novegradian'},
      {:index => 23,  :doc => 'dialects',             :title => 'Dialects'},
      {:index => 24,  :doc => 'history',              :title => 'Historical Phonology and Morphology'},
      {:index => 25,  :doc => 'appendices',           :title => 'Appendices'}
    ]

    def index
    end

    def show
      @current_page = @@pages.select{|p| p[:doc] == params[:page]}.first or raise ActionController::RoutingError.new('Not Found')
      idx = @@pages.index(@current_page)
      @next_page = @@pages[idx + 1] rescue nil
      @previous_page = idx >= 1 ? @@pages[idx - 1] : nil

      @chapter = @current_page[:index]
      @section = 0
      @subsection = 0
      @subsubsection = 0
      @subsubsubsection = 0
      @section_context = :chapter

      render params[:page]
    end

    private

    def set_context
      @context = 'novegradian'
    end
  end
end
