module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineInIje
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Masculine in *-ije"
          end

          def _nominative_singular
            [stem + "е", stem_transliterated + "je"]
          end

          def _nominative_singular_topicalized
            [stem + "й-ёт", remove_stress(stem_transliterated) + "j-iót"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "ji"]
          end

          def _genitive_singular
            if gen_sg_in_u?
              [stem + "ю", stem_transliterated + "ju"]
            else
              [stem + "я", stem_transliterated + "ja"]
            end
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "й", stem_transliterated + "j"]
          end

          def _accusative_singular_topicalized
            if animate?
              if gen_sg_in_u?
                [stem + "ю-то", stem_transliterated + "ju-to"]
              else
                [stem + "я-то", stem_transliterated + "ja-to"]
              end
            else
              [stem + "й-ёт", remove_stress(stem_transliterated) + "j-iót"]
            end
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "ем", stem_transliterated + "jem"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "jám"]
          end

          def _partitive_singular
            [desinence + "ек", desinence_transliterated + "jék"]
          end

          def _partitive_plural
            [stem + "еу", stem_transliterated + "jeu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "jě"]
          end

          def _locative_plural
            [stem + "ѣх", stem_transliterated + "jěh"]
          end

          def _lative_singular
            [stem + "ен", stem_transliterated + "jen"]
          end

          def _lative_plural
            [stem + "ѣ", stem_transliterated + "jě"]
          end
        end
      end
    end
  end
end
