module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module VStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "V-Stem"
          end

          def _nominative_singular
            [stem + "уа", stem_transliterated + "ua"]
          end

          def _nominative_singular_topicalized
            [stem + "ў-от", remove_stress(stem_transliterated) + "w-ót"]
          end

          def _nominative_plural
            [stem + "еви", stem_transliterated + "evi"]
          end

          def _genitive_singular
            [stem + "ева", stem_transliterated + "eva"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : _nominative_singular
          end

          def _accusative_singular_topicalized
            if animate?
              [stem + "ева-то", stem_transliterated + "eva-to"]
            else
              _nominative_singular_topicalized
            end
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "евем", stem_transliterated + "evem"]
          end

          def _dative_plural
            [stem + "еуми", stem_transliterated + "eumi"]
          end

          def _partitive_singular
            [stem + "евек", remove_stress(stem_transliterated) + "evék"]
          end

          def _partitive_plural
            [stem + "евоу", stem_transliterated + "evou"]
          end

          def _locative_singular
            [stem + "еве", stem_transliterated + "eve"]
          end

          def _locative_plural
            [stem + "евѣх", stem_transliterated + "evěh"]
          end

          def _lative_singular
            [stem + "евин", stem_transliterated + "evin"]
          end

          def _lative_plural
            [desinence + "еви", desinence_transliterated + "évi"]
          end
        end
      end
    end
  end
end
