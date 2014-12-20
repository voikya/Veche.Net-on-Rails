module Morphology
  module Novegradian
    module Nouns
      module Consonantal
        module ReattachedVStem
          def declension
            "Consonantal (Sixth) Declension"
          end

          def subtype
            "Reattached V-Stem"
          end

          def _nominative_singular
            [stem + "ев", stem_transliterated + "év"]
          end

          def _nominative_singular_topicalized
            [stem + "ев-от", stem_transliterated + "ev-ót"]
          end

          def _nominative_dual
            [stem + "еве", stem_transliterated + "éve"]
          end

          def _nominative_plural
            [stem + "еви", stem_transliterated + "évi"]
          end

          def _genitive_singular
            [stem + "ева", stem_transliterated + "éva"]
          end

          def _genitive_dual
            [stem + "еву", stem_transliterated + "évu"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : _nominative_singular
          end

          def _accusative_singular_topicalized
            if animate?
              [stem + "ева-то", stem_transliterated + "éva-to"]
            else
              _nominative_singular_topicalized
            end
          end

          def _accusative_dual
            animate? ? _genitive_dual : _nominative_dual
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "евем", stem_transliterated + "évem"]
          end

          def _dative_dual
            [stem + "еума", stem_transliterated + "éuma"]
          end

          def _dative_plural
            [stem + "еуми", stem_transliterated + "éumi"]
          end

          def _partitive_singular
            [stem + "евек", stem_transliterated + "evék"]
          end

          def _partitive_dual
            [stem + "еву", stem_transliterated + "évu"]
          end

          def _partitive_plural
            [stem + "евоу", stem_transliterated + "évou"]
          end

          def _locative_singular
            [stem + "еве", stem_transliterated + "éve"]
          end

          def _locative_dual
            [stem + "еву", stem_transliterated + "évu"]
          end

          def _locative_plural
            [stem + "евѣх", stem_transliterated + "évěh"]
          end

          def _lative_singular
            [stem + "евин", stem_transliterated + "évin"]
          end

          def _lative_dual
            [stem + "еве", stem_transliterated + "éve"]
          end

          def _lative_plural
            [stem + "еви", stem_transliterated + "évi"]
          end
        end
      end
    end
  end
end
