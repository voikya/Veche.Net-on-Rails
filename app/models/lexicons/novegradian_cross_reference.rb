module Lexicons
  class NovegradianCrossReference < ActiveRecord::Base

    self.table_name = 'novegradian_crossrefs'

    belongs_to :novegradian, :foreign_key => :from
    belongs_to :novegradian, :foreign_key => :to
  end
end
