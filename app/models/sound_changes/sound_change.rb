module SoundChanges
  class SoundChange < ActiveRecord::Base
    self.table_name = 'sca_sound_changes'

    attr_accessible :input, :output, :environment, :order

    belongs_to :sound_change_group, :class_name  => SoundChanges::SoundChangeGroup,
                                    :foreign_key => :group_id

    def as_json(opts={})
      {
        :id => id,
        :input => input,
        :output => output,
        :environment => environment,
        :order => order
      }
    end
  end
end
