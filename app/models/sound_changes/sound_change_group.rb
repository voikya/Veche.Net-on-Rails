module SoundChanges
  class SoundChangeGroup < ActiveRecord::Base
    self.table_name = 'sca_sound_change_groups'

    default_scope includes(:sound_changes)

    attr_accessible :title, :description, :order, :language_id, :sound_changes_attributes

    belongs_to :language, :class_name => SoundChanges::Language
    has_many :sound_changes, :class_name => SoundChanges::SoundChange,
                             :foreign_key => :group_id

    accepts_nested_attributes_for :sound_changes

    def as_json(opts={})
      {
        :id => id,
        :title => title,
        :description => description,
        :order => order,
        :sound_changes => sound_changes
      }
    end

    def run(word)
      sound_changes.each do |sc|
        word = sc.run(word)
      end
      word
    end
  end
end
