require_relative '../palatalization'

module Morphology
  module Novegradian
    module Nouns
      module AStem
        module StemStressedWithConsonantMutation
          include Nouns::Palatalization

          def declension
            "A (First) Declension"
          end

          def subtype
            "Stem-Stressed with Consonant Mutation in Plural"
          end

          def _nominative_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _nominative_plural
            [stem_mutated + "и", stem_transliterated_mutated + "i"]
          end

          def _genitive_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "у", stem_transliterated + "u"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : [stem_mutated + "и", stem_transliterated_mutated + "i"]
          end

          def _dative_singular
            [stem + "ой", stem_transliterated + "oi"]
          end

          def _dative_plural
            [stem_mutated + "ам", stem_transliterated_mutated + "am"]
          end

          def _partitive_singular
            [stem + "ок", stem_transliterated + "ok"]
          end

          def _partitive_plural
            [desinence_mutated + "оу", desinence_transliterated_mutated + "óu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_plural
            [stem_mutated + "ѣх", stem_transliterated_mutated + "ěh"]
          end

          def _lative_singular
            [stem + "ун", stem_transliterated + "un"]
          end

          def _lative_plural
            [stem_mutated + "и", stem_transliterated_mutated + "i"]
          end
        end
      end
    end
  end
end
