module Morphology
  module Novegradian
    module Nouns
      module OStem
        module HumanMasculineStemNominative
          def declension
            "O (Third) Declension"
          end

          def subtype
            "Masculine Stem-Nominative with Consonant Mutation in Plural"
          end

          def _nominative_singular
            [stem, stem_transliterated]
          end

          def _nominative_singular_topicalized
            [stem + "-от", remove_stress(stem_transliterated) + "-ót"]
          end

          def _nominative_plural
            [desinence + "ьа", desinence_transliterated + "já"]
          end

          def _genitive_singular
            [stem + "а", stem_transliterated + "a"]
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
            [stem + "ом", stem_transliterated + "om"]
          end

          def _dative_plural
            [desinence + "ьам", desinence_transliterated + "jám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ок", desinence_transliterated + "ók"]
            end
          end

          def _partitive_plural
            [stem + "ьоу", stem_transliterated + "jou"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_plural
            [desinence + "ьѣх", desinence_transliterated + "jě́h"]
          end

          def _lative_singular
            [desinence + "он", desinence_transliterated + "ón"]
          end

          def _lative_plural
            [stem + "ьи", stem_transliterated + "ji"]
          end
        end
      end
    end
  end
end
