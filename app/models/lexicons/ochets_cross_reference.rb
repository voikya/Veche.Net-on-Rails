module Lexicons
  class OchetsCrossReference < ActiveRecord::Base
    attr_accessible :to, :from

    self.table_name = 'ochets_crossrefs'

    belongs_to :referencing, :class_name => Ochets, :foreign_key => :from, :inverse_of => :cross_reference_links
    belongs_to :referenced, :class_name => Ochets, :foreign_key => :to, :inverse_of => :inverse_cross_reference_links
  end
end
