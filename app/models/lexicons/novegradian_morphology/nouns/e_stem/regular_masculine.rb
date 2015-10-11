module Morphology
  module Novegradian
    module Nouns
      module EStem
        module RegularMasculine
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Regular Masculine"
          end

          def _nominative_singular
            [stem + "е", stem_transliterated + "e"]
          end

          def _nominative_dual
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _nominative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _genitive_singular
            if gen_sg_in_u?
              [stem + "у", stem_transliterated + "u"]
            else
              [stem + "а", stem_transliterated + "a"]
            end
          end

          def _genitive_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : [stem, stem_transliterated]
          end

          def _accusative_singular_topicalized
            if animate?
              if gen_sg_in_u?
                [stem + "у-то", stem_transliterated + "u-to"]
              else
                [stem + "а-то", stem_transliterated + "a-to"]
              end
            else
              [stem + "-от", remove_stress(stem_transliterated) + "-ót"]
            end
          end

          def _accusative_dual
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "ем", stem_transliterated + "em"]
          end

          def _dative_dual
            [desinence + "ема", desinence_transliterated + "éma"]
          end

          def _dative_plural
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ек", desinence_transliterated + "ék"]
            end
          end

          def _partitive_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _partitive_plural
            [stem + "еу", stem_transliterated + "eu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_dual
            [stem + "у", stem_transliterated + "u"]
          end

          def _locative_plural
            [stem + "ѣх", stem_transliterated + "ěh"]
          end

          def _lative_singular
            [stem + "ен", stem_transliterated + "en"]
          end

          def _lative_dual
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _lative_plural
            [stem + "ѣ", stem_transliterated + "ě"]
          end
        end
      end
    end
  end
end
