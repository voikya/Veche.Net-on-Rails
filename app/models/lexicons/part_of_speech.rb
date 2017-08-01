module Lexicons
  class PartOfSpeech < ActiveRecord::Base
    self.table_name = 'parts_of_speech'
    self.inheritance_column = nil

    def self.for(lexicon)
      where(:lexicon_id => lexicon.id).order("type ASC, class_membership ASC NULLS FIRST, form ASC NULLS FIRST").all
    end

    def as_json(opts = {})
      {
        :id => id,
        :type => type,
        :class_membership => class_membership,
        :form => form
      }
    end
  end
end
