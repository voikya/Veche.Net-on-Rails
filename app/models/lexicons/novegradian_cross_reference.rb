module Lexicons
  class NovegradianCrossReference < ActiveRecord::Base
    attr_accessible :to, :from

    self.table_name = 'novegradian_crossrefs'

    belongs_to :referencing, :class_name => Novegradian, :foreign_key => :from, :inverse_of => :cross_reference_links
    belongs_to :referenced, :class_name => Novegradian, :foreign_key => :to, :inverse_of => :inverse_cross_reference_links
  end
end
