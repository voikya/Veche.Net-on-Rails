module SoundChanges
  class Feature < ActiveRecord::Base
    self.table_name = 'sca_features'
    attr_accessible :name, :boolean, :affects, :description

    has_many :phoneme_features, :class_name => SoundChanges::PhonemeFeature
    has_many :phonemes, :through => :phoneme_features
  end
end
