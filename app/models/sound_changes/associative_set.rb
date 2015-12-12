module SoundChanges
  class AssociativeSet
    def initialize(phoneme_set=[])
      @set = phoneme_set
    end

    def sorted
      self.class.new(@set.sort)
    end

    def symbol_set
      @set.map(&:symbol)
    end

    def apply_features(feature_set)
      SoundChanges::AssociativeSet.new(
        @set.map { |p| p.apply_features(feature_set) }
      )
    end
  end
end
