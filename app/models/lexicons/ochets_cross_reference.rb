module Lexicons
  class OchetsCrossReference < ActiveRecord::Base

    self.table_name = 'ochets_crossrefs'

    belongs_to :ochets, :foreign_key => :from
    belongs_to :ochets, :foreign_key => :to
  end
end
