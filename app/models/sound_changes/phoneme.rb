module SoundChanges
  class Phoneme < ActiveRecord::Base
    self.table_name = 'sca_phonemes'
    attr_accessible :symbol, :language_id

    default_scope includes(:phoneme_features)

    belongs_to :language, :class_name => SoundChanges::Language
    has_many :phoneme_features, :class_name => SoundChanges::PhonemeFeature
    has_many :features, :through => :phoneme_features

    def self.create_from_feature_string(symbol, feature_string, opts={})
      return nil if where({:symbol => symbol}.merge(opts)).first
      phoneme = create({:symbol => symbol}.merge(opts))
      SoundChanges::PhonemeFeature.parse(feature_string).each do |f|
        f.phoneme_id = phoneme.id
        f.save
      end
    end

    def self.find_ipa(symbol)
      where(:symbol => symbol, :language_id => nil).first
    end

    def set_features(feature_definitions)
      phoneme_features.each do |pfeature|
        feature_name = pfeature.feature.name.to_sym
        if feature_definitions[feature_name].nil?
          pfeature.destroy
        else
          if [true, false].include? feature_definitions[feature_name]
            pfeature.value = feature_definitions[feature_name]
          else
            pfeature.custom_value = feature_definitions[feature_name]
          end
          pfeature.save
        end
      end
      feature_definitions.reject{ |k,v| v.nil? }.each do |k,v|
        pfeature = phoneme_features.select{ |pf| pf.name == k.to_sym }.first
        if pfeature.nil?
          SoundChanges::PhonemeFeature.create(
            phoneme_id: id,
            feature_id: SoundChanges::Feature.find_by_name(k).id,
            value: ([true, false].include?(v) ? v : false),
            custom_value: ([true, false].include?(v) ? nil : v)
          )
        end
      end
    end

    def as_json(opts={})
      {
        :symbol => symbol,
        :language => (language ? language.name : nil),
        :features => phoneme_features.reduce({}) do |memo, pfeature|
          memo.tap { |h| h[pfeature.name] = pfeature.custom_value || pfeature.value }
        end
      }
    end

    # Phonemes can be "sorted" by how they are articulated. This corresponds to
    # the left-right position on the IPA chart (with bilabial consonants and front
    # vowels coming first).
    #
    # Sorting behavior may not be defined across different manners of articulation
    # (e.g., /t/ and /s/) or if the phoneme object lacks sufficient or sensible
    # feature information.
    CONSONANT_SORT_L1 = %w([+labial]
                           [+coronal]
                           [+anterior]
                           [+retroflex]
                           [+dorsal]
                           [+palatal]
                           [+uvular]
                           [+radical]
                           [+laryngeal])
    CONSONANT_SORT_L2 = %w([?-voice]
                           [+voice])
    CONSONANT_SORT_L3 = %w([?-aspirated,?-labialized,?-palatalized,?-velarized,?-pharyngealized]
                           [+aspirated]
                           [+labialized]
                           [+palatalized]
                           [+velarized]
                           [+pharyngealized])
    VOWEL_SORT_L1     = %w([+front]
                           [-front,-back]
                           [+back])
    VOWEL_SORT_L2     = %w([-rounded]
                           [+rounded])
    VOWEL_SORT_L3     = %w([?-long]
                           [+long])
    def <=>(other)
      if consonantal?
        feature_checks = [CONSONANT_SORT_L1, CONSONANT_SORT_L2, CONSONANT_SORT_L3]
      elsif vocalic?
        feature_checks = [VOWEL_SORT_L1, VOWEL_SORT_L2]
      else
        # Ill-defined entities go the end
        return 1
      end
      feature_checks.each do |level|
        value1 = level.find_index { |condition| self.is?(condition) }
        value2 = level.find_index { |condition| other.is?(condition) }
        if value1.nil?
          # This object is ill-defined, push it towards the end
          return 1
        elsif value2.nil?
          # The other object is ill-defined, push it towards the end
          return -1
        elsif value1 != value2
          # Different indexes found for this sort level, return well-defined order
          return value1 <=> value2
        end
        # No match found yet, continue to next level
      end
      # No match found, return equal
      return 0
    end

    def is?(feature_string)
      feature_string.gsub(/\s+/, '').gsub(/[\[\]]/, '').split(',').all? do |feature_opts|
        case feature_opts[0]
          when "+"
            pf = phoneme_features.select{ |pf| pf.name == feature_opts[1..-1].to_sym }.first
            pf && pf.value == true
          when "-"
            pf = phoneme_features.select{ |pf| pf.name == feature_opts[1..-1].to_sym }.first
            pf && pf.value == false
          when "?"
            # Use "?+" and "?-" to mean "+/- or undefined"
            if feature_opts[1] == "+"
              pf = phoneme_features.select{ |pf| pf.name == feature_opts[1..-1].to_sym }.first
              pf.nil? || pf.value == true
            elsif feature_opts[1] == "-"
              pf = phoneme_features.select{ |pf| pf.name == feature_opts[1..-1].to_sym }.first
              pf.nil? || pf.value == false
            end
          else
            k, v = feature_opts.split(":")
            pf = phoneme_features.select{ |pf| pf.name == k.to_sym }.first
            pf && pf.custom_value == v
        end
      end
    end

    # Return another phoneme that matches the current phoneme's features with the
    # given feature set overlaid
    def apply_features(feature_set)
      raise ArgumentError unless feature_set.is_a?(SoundChanges::FeatureSet)
      current_features = SoundChanges::FeatureSet.new(phoneme_features.to_a)
      feature_set.set.each do |feature_overlay|
        current_features.set.reject! { |s| s.name == feature_overlay.name }
        current_features.set << feature_overlay
      end
      feature_str = current_features.to_s

      SoundChanges::Phoneme.where(:language_id => language_id)
                           .to_a
                           .find { |p| p.is?(feature_str) }
    end

    private

    def method_missing(method, *args, &block)
      if method[-1] == "?"
        pf = phoneme_features.select{ |pf| pf.name == method[0..-2].to_sym }.first
        pf ? pf.value : nil
      else
        super
      end
    end
  end
end
