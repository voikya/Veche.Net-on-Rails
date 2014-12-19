module Morphology
  module Novegradian
    module Nouns
      module EStem
        module FleetingL
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Fleeting *-l-"
          end

          def _nominative_singular
            [stem + "е", stem_transliterated + "ie"]
          end

          def _nominative_singular_topicalized
            [stem + "л-от", remove_stress(stem_transliterated) + "l-ót"]
          end

          def _nominative_plural
            [stem + "ли", stem_transliterated + "li"]
          end

          def _genitive_singular
            if gen_sg_in_u?
              [stem + "лу", stem_transliterated + "lu"]
            else
              [stem + "ла", stem_transliterated + "la"]
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
                [stem + "лу-то", stem_transliterated + "lu-to"]
              else
                [stem + "ла-то", stem_transliterated + "la-to"]
              end
            else
              [stem + "л-от", remove_stress(stem_transliterated) + "l-ót"]
            end
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "лем", stem_transliterated + "lem"]
          end

          def _dative_plural
            [desinence + "лам", desinence_transliterated + "lám"]
          end

          def _partitive_singular
            [desinence + "лек", desinence_transliterated + "lék"]
          end

          def _partitive_plural
            [stem + "леу", stem_transliterated + "leu"]
          end

          def _locative_singular
            [stem + "лѣ", stem_transliterated + "lě"]
          end

          def _locative_plural
            [stem + "лѣх", stem_transliterated + "lěh"]
          end

          def _lative_singular
            [stem + "лен", stem_transliterated + "len"]
          end

          def _lative_plural
            [stem + "лѣ", stem_transliterated + "lě"]
          end
        end
      end
    end
  end
end
