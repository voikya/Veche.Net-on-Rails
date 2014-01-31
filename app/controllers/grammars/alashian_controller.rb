module Grammars
  class AlashianController < ApplicationController
    layout 'grammar'
    before_filter :set_context

    @@pages = [
      {:index => 'a', :doc => 'foreword', :title => 'Foreword'},
      {:index => 'b', :doc => 'abbreviations', :title => 'Abbreviations'},
      {:index => 1, :doc => 'background', :title => 'Background'},
      {:index => 2, :doc => 'phonology', :title => 'Phonology'},
      {:index => 3, :doc => 'writing', :title => 'Writing'},
      {:index => 4, :doc => 'verbintro', :title => 'Introduction to the Verbal System'},
      {:index => 5, :doc => 'scale1', :title => 'Verb Scale I: <i>katab</i> and <i>nuktāb</i>'},
      {:index => 6, :doc => 'scale2', :title => 'Verb Scale II: <i>kəthēb</i> and <i>kəthāb</i>'},
      {:index => 7, :doc => 'scale3', :title =>  'Verb Scale III: <i>\'aktēb</i> and <i>\'ennuktāb</i>'},
      {:index => 8, :doc => 'scale4', :title => 'Verb Scale IV: <i>taktēb</i>'},
      {:index => 9, :doc => 'scale5', :title => 'Verb Scale V: <i>nitkatab</i>'},
      {:index => 10, :doc => 'scale6', :title => 'Verb Scale VI: <i>staktab</i> and <i>nistuktāb</i>'},
      {:index => 11, :doc => 'otherverbal', :title => 'Other Verbal Forms'},
      {:index => 12, :doc => 'irregular', :title => 'Comparative Verb Tables and Common Irregular Roots'},
      {:index => 13, :doc => 'european', :title => 'European Loan Verbs'},
      {:index => 14, :doc => 'nouns', :title => 'The Nominal System'},
      {:index => 15, :doc => 'adjectives', :title => 'Adjectives'},
      {:index => 16, :doc => 'pronouns', :title => 'Pronouns'},
      {:index => 17, :doc => 'prepositions', :title => 'Prepositions'},
      {:index => 18, :doc => 'derivation', :title => 'Derivation'},
      {:index => 19, :doc => 'verbphrases', :title => 'Verb Phrases'},
      {:index => 20, :doc => 'nounphrases', :title => 'Noun Phrases'},
      {:index => 21, :doc => 'clauses', :title => 'Clauses'},
      {:index => 22, :doc => 'spoken', :title => 'Spoken Alashian'},
      {:index => 23, :doc => 'history', :title => 'Historical Phonology and Morphology'},
      {:index => 24, :doc => 'appendix', :title => 'Appendices'}
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
      @example_index = 0

      render params[:page]
    end

    private

    def set_context
      @context = 'alashian'
    end
  end
end
