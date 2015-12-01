module SoundChanges
  class PhonemeFeature < ActiveRecord::Base
    self.table_name = 'sca_phoneme_features'
    attr_accessible :phoneme_id, :feature_id, :value, :custom_value

    belongs_to :phoneme, :class_name => SoundChanges::Phoneme
    belongs_to :feature, :class_name => SoundChanges::Feature

    # Take a feature string and returns a set of corresponding phoneme feature objects
    def self.parse(str)
      set = []
      feature_list = str.gsub(/\s+/, '').gsub(/[\[\]]/, '').split(',')
      feature_list.each do |f|
        case f[0]
          when '+'
            value = true
            name = f[1..-1]
          when '-'
            value = false
            name = f[1..-1]
          else
            split = f.split(':')
            raise 'Invalid string' unless split.count == 2
            name = split[0]
            value = split[1]
        end

        feature = SoundChanges::Feature.find_by_name(name)
        fields = {}
        fields[:feature_id] = SoundChanges::Feature.find_by_name(name).id
        if value == true || value == false
          fields[:value] = value
        else
          fields[:custom_value] = value
        end
        set << SoundChanges::PhonemeFeature.new(fields)
      end
      set
    end

    def name
      feature.name.to_sym
    end
  end
end
