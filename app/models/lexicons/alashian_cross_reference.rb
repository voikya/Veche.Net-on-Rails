module Lexicons
  class AlashianCrossReference < ActiveRecord::Base

    self.table_name = 'alashian_crossrefs'

    belongs_to :alashian, :foreign_key => :from
    belongs_to :alashian, :foreign_key => :to
  end
end
