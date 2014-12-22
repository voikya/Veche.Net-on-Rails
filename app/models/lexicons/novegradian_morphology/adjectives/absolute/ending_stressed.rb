require_relative 'stem_stressed'

module Morphology
  module Novegradian
    module Adjectives
      module Absolute
        module EndingStressed
          include Absolute::StemStressed

          def subtype
            "Ending-Stressed"
          end

          def _definite_nominative_masculine
            [stem + "ей", stem_transliterated + "ei"]
          end

          def _definite_nominative_neuter
            [tertiary + "ое", tertiary_transliterated + "óie"]
          end

          def _definite_nominative_feminine
            [tertiary + "ая", tertiary_transliterated + "áia"]
          end

          def _definite_nominative_plural
            [tertiary + "ие", tertiary_transliterated + "íje"]
          end

          def _definite_genitive_masculine
            [tertiary + "аево", tertiary_transliterated + "áievo"]
          end

          def _definite_genitive_feminine
            [tertiary + "ѣе", tertiary_transliterated + "ě́ie"]
          end

          def _definite_genitive_plural
            [tertiary + "их", tertiary_transliterated + "íh"]
          end

          def _definite_accusative_masculine
            [stem + "ий", stem_transliterated + "ij"]
          end

          def _definite_accusative_neuter
            [tertiary + "ое", tertiary_transliterated + "óie"]
          end

          def _definite_accusative_feminine
            [tertiary + "аю", tertiary_transliterated + "áiu"]
          end

          def _definite_accusative_plural
            [tertiary + "ие", tertiary_transliterated + "íje"]
          end

          def _definite_dative_masculine
            [tertiary + "ием", tertiary_transliterated + "íjem"]
          end

          def _definite_dative_feminine
            [tertiary + "оюн", tertiary_transliterated + "óiun"]
          end

          def _definite_dative_plural
            [tertiary + "иеми", tertiary_transliterated + "íjemi"]
          end

          def _definite_partitive_singular
            [tertiary + "аево", tertiary_transliterated + "áievo"]
          end

          def _definite_partitive_plural
            [tertiary + "овево", tertiary_transliterated + "óvevo"]
          end

          def _definite_locative_singular
            [tertiary + "ѣѣм", tertiary_transliterated + "ě́iěm"]
          end

          def _definite_locative_plural
            [tertiary + "иех", tertiary_transliterated + "íjeh"]
          end

          def _definite_lative_singular
            [tertiary + "уюн", tertiary_transliterated + "úiun"]
          end

          def _definite_lative_plural
            [tertiary + "ѣѣ", tertiary_transliterated + "ě́iě"]
          end

          def gen_pl_stem(word, epenthetic_vowel)
            vowels = %w(а е ё и о у ѣ ю я ы)
            if word[-1] == "ь"
              if vowels.include? word[-3]
                return word
              else
                return word[0..-3] + epenthetic_vowel + word[-2..-1]
              end
            end
            case word[-2]
              when vowels
                return word
              when "й"
                if epenthetic_vowel == "о"
                  word[-2] = "ё"
                else
                  word[-2] = epenthetic_vowel
                end
                return word
              else
                return word[0..-2] + epenthetic_vowel + word[-1]
            end
          end

          def gen_pl_stem_transliterated(word, epenthetic_vowel)
            vowels = %w(a e i o u y ě á é í ó ú ý ě́)
            if vowels.include?(word[-2]) || (word[-1] == "j" && vowels.include?(word[-3]))
              return word
            elsif word[-1] == "j"
              return word[0..-3] + epenthetic_vowel + word[-2..-1]
            else
              return word[0..-2] + epenthetic_vowel + word[-1]
            end
          end
        end
      end
    end
  end
end
