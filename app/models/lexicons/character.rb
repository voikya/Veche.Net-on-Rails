module Lexicons
  class Character < ActiveRecord::Base
    belongs_to :lexicon

    def unweighted?
      weight.zero?
    end
  end
end
