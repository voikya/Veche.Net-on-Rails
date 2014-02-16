module Grammars
  class OchetsController < ApplicationController
    layout 'grammar'
    before_filter :set_context

    @@pages = [
      {:index => 'a', :doc => 'foreword', :title => 'Foreword'},
      {:index => 1,   :doc => 'background', :title => 'Background'},
      {:index => 2,   :doc => 'phonology', :title => 'Phonology'},
      {:index => 3,   :doc => 'writing', :title => 'Writing'},
      {:index => 4,   :doc => 'nominalmorphology', :title => 'Nominal Morphology'},
      {:index => 5,   :doc => 'quantifiermorphology', :title => 'Quantifier Morphology'},
      {:index => 6,   :doc => 'adjectivalmorphology', :title => 'Adjectival Morphology'},
      {:index => 7,   :doc => 'pronounmorphology', :title => 'Pronoun and Other Pro-Form Morphology'},
      {:index => 8,   :doc => 'verbalmorphology', :title => 'Verbal Morphology'},
      {:index => 9,   :doc => 'derivationalmorphology', :title => 'Derivational Morphology and Word Creation'}
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
      @context = 'ochets'
    end
  end
end
