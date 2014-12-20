module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module NtStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "NT-Stem"
          end

          def _nominative_singular
            [desinence + "ин", desinence_transliterated + "ín"]
          end

          def _nominative_singular_topicalized
            [desinence + "ин-от", desinence_transliterated + "in-ót"]
          end

          def _nominative_plural
            [stem + "ете", stem_transliterated + "ete"]
          end

          def _genitive_singular
            [stem + "ета", stem_transliterated + "eta"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            _genitive_singular
          end

          def _accusative_plural
            _genitive_plural
          end

          def _dative_singular
            [stem + "етем", stem_transliterated + "etem"]
          end

          def _dative_plural
            [stem + "етми", stem_transliterated + "etmi"]
          end

          def _partitive_singular
            [stem + "едек", remove_stress(stem_transliterated) + "edék"]
          end

          def _partitive_plural
            [stem + "етоу", stem_transliterated + "etou"]
          end

          def _locative_singular
            [stem + "ете", stem_transliterated + "ete"]
          end

          def _locative_plural
            [stem + "етѣх", stem_transliterated + "etěh"]
          end

          def _lative_singular
            [stem + "етин", stem_transliterated + "etin"]
          end

          def _lative_plural
            [desinence + "ети", desinence_transliterated + "éti"]
          end
        end
      end
    end
  end
end
