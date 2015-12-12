module SoundChanges
  class FeatureSet
    attr_reader :set

    def self.parse(str)
      new(SoundChanges::PhonemeFeature.parse(str))
    end

    def initialize(features=[])
      @set = features
    end

    def to_s
      return "" if @set.empty?

      features = @set.map do |feature|
        if feature.value == true
          "+#{feature.name}"
        elsif feature.value == false
          "-#{feature.name}"
        else
          "#{feature.name}:#{feature.custom_value}"
        end
      end

      "[#{features.join(', ')}]"
    end
  end
end
