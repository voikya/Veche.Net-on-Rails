require_relative 'ending_stressed'

module Morphology
  module Novegradian
    module Adjectives
      module Absolute
        module FullEndingStressed
          include Absolute::EndingStressed

          def subtype
            "Ending-Stressed (All Forms)"
          end

          def _indefinite_nominative_masculine
            [tertiary + "е", tertiary_transliterated + "é"]
          end

          def _indefinite_nominative_neuter
            [tertiary + "о", tertiary_transliterated + "ó"]
          end

          def _indefinite_nominative_feminine
            [tertiary + "а", tertiary_transliterated + "á"]
          end

          def _indefinite_nominative_plural
            [tertiary + "и", tertiary_transliterated + "í"]
          end

          def _indefinite_genitive_masculine
            [tertiary + "а", tertiary_transliterated + "á"]
          end

          def _indefinite_genitive_feminine
            [tertiary + "ѣ", tertiary_transliterated + "ě́"]
          end

          def _indefinite_genitive_plural
            [gen_pl_stem(stem, "о"), gen_pl_stem_transliterated(stem_transliterated, "ó")]
          end

          def _indefinite_accusative_masculine
            if _indefinite_genitive_plural[0] == tertiary
              # If no epenthetic vowel in genitive plural, accusative is endingless
              [stem, stem_transliterated]
            else
              # Otherwise, an epethetic /e/ identical to the nominative is needed
              _indefinite_nominative_masculine
            end
          end

          def _indefinite_accusative_neuter
            [tertiary + "о", tertiary_transliterated + "ó"]
          end

          def _indefinite_accusative_feminine
            [tertiary + "у", tertiary_transliterated + "ú"]
          end

          def _indefinite_accusative_plural
            [tertiary + "и", tertiary_transliterated + "í"]
          end

          def _indefinite_dative_masculine
            [tertiary + "ом", tertiary_transliterated + "óm"]
          end

          def _indefinite_dative_feminine
            [tertiary + "ой", tertiary_transliterated + "ói"]
          end

          def _indefinite_dative_plural
            [tertiary + "ами", tertiary_transliterated + "ámi"]
          end

          def _indefinite_partitive_singular
            [tertiary + "а", tertiary_transliterated + "á"]
          end

          def _indefinite_partitive_plural
            [tertiary + "оу", tertiary_transliterated + "óu"]
          end

          def _indefinite_locative_singular
            [tertiary + "ѣ", tertiary_transliterated + "ě́"]
          end

          def _indefinite_locative_plural
            [tertiary + "ѣх", tertiary_transliterated + "ě́h"]
          end

          def _indefinite_lative_singular
            [tertiary + "ун", tertiary_transliterated + "ún"]
          end

          def _indefinite_lative_plural
            [tertiary + "и", tertiary_transliterated + "í"]
          end

          def _definite_nominative_masculine
            [tertiary + "ей", tertiary_transliterated + "éi"]
          end

          def _definite_accusative_masculine
            [tertiary + "ий", tertiary_transliterated + "íj"]
          end

          # This is a slightly modified form of the standard method that includes
          # calls to #remove_stress to deal with stressed epenthetic vowels.
          def gen_pl_stem_transliterated(word, epenthetic_vowel)
            vowels = %w(a e i o u y ě á é í ó ú ý ́)
            if vowels.include?(word[-2]) || (word[-1] == "j" && vowels.include?(word[-3]))
              return word
            elsif word[-1] == "j"
              return remove_stress(word[0..-3]) + epenthetic_vowel + word[-2..-1]
            else
              return remove_stress(word[0..-2]) + epenthetic_vowel + word[-1]
            end
          end
        end
      end
    end
  end
end
