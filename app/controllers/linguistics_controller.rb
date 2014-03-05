class LinguisticsController < ApplicationController
  layout 'linguistics'
  before_filter :initialize_counters

  def baltic_sprachbund
  end

  def slavic_numerals
  end

  def verbs_of_motion
  end

  private

  def initialize_counters
    @chapter = -1
    @section = 0
    @subsection = 0
    @subsubsection = 0
    @subsubsubection = 0
    @section_context = nil
    @example_index = 0
  end
end
