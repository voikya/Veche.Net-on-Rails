module Grammars
  class TunisianController < ApplicationController
    layout 'grammar'
    before_filter :set_context

    @@pages = [
      {:index => 1, :doc => 'background', :title => 'Background'},
      {:index => 2, :doc => 'phonology',  :title => 'Phonology' }
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
      @context = 'tunisian'
    end
  end
end
