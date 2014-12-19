module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineInVie
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Masculine in *-Vie"
          end

          def _nominative_singular
            [stem + "е", stem_transliterated + "ie"]
          end

          def _nominative_singular_topicalized
            [stem + "й-ёт", remove_stress(stem_transliterated) + "j-iót"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "ji"]
          end

          def _genitive_singular
            if gen_sg_in_u?
              [stem + "ю", stem_transliterated + "iu"]
            else
              [stem + "я", stem_transliterated + "ia"]
            end
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem + "й", stem_transliterated + "i"]
          end

          def _accusative_singular_topicalized
            if animate?
              if gen_sg_in_u?
                [stem + "ю-то", stem_transliterated + "iu-to"]
              else
                [stem + "я-то", stem_transliterated + "ia-to"]
              end
            else
              [stem + "й-ёт", remove_stress(stem_transliterated) + "j-iót"]
            end
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "ем", stem_transliterated + "iem"]
          end

          def _dative_plural
            [desinence + "ям", desinence_transliterated + "iám"]
          end

          def _partitive_singular
            [desinence + "ек", desinence_transliterated + "iék"]
          end

          def _partitive_plural
            [stem + "еу", stem_transliterated + "jeu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "iě"]
          end

          def _locative_plural
            [stem + "ѣх", stem_transliterated + "iěh"]
          end

          def _lative_singular
            [stem + "ен", stem_transliterated + "ien"]
          end

          def _lative_plural
            [stem + "ѣ", stem_transliterated + "iě"]
          end
        end
      end
    end
  end
end
