module Morphology
  module Novegradian
    module Nouns
      module OStem
        module MasculineStemNominative
          def declension
            "O (Third) Declension"
          end

          def subtype
            "Masculine Stem-Nominative"
          end

          def _nominative_singular
            [stem, stem_transliterated]
          end

          def _nominative_singular_topicalized
            [stem + "-от", remove_stress(stem_transliterated) + "-ót"]
          end

          def _nominative_plural
            [desinence + "а", desinence_transliterated + "á"]
          end

          def _genitive_singular
            if animate?
              [stem + "а", stem_transliterated + "a"]
            else
              [stem + "у", stem_transliterated + "u"]
            end
          end

          def _genitive_singular_topicalized
            if animate?
              [stem + "а-то", stem_transliterated + "a-to"]
            else
              [stem + "у-то", stem_transliterated + "u-to"]
            end
          end

          def _genitive_plural
            [tertiary, tertiary_transliterated]
          end

          def _accusative_singular
            animate? ? _genitive_singular : _nominative_singular
          end

          def _accusative_singular_topicalized
            animate? ? _genitive_singular_topicalized : _nominative_singular_topicalized
          end

          def _accusative_plural
            animate? ? _genitive_plural : _nominative_plural
          end

          def _dative_singular
            [stem + "ом", stem_transliterated + "om"]
          end

          def _dative_plural
            [desinence + "ам", desinence_transliterated + "ám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ок", desinence_transliterated + "ók"]
            end
          end

          def _partitive_plural
            [stem + "оу", stem_transliterated + "ou"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "ě́h"]
          end

          def _lative_singular
            [desinence + "он", desinence_transliterated + "ón"]
          end

          def _lative_plural
            [stem + "и", stem_transliterated + "i"]
          end
        end
      end
    end
  end
end
