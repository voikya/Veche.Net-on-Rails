module Morphology
  module Novegradian
    module Adjectives
      module Comparative
        module StemStressed
          def subtype
            "Stem-Stressed"
          end

          def _indefinite_nominative_masculine
            [stem + "е", stem_transliterated + "e"]
          end

          def _indefinite_nominative_neuter
            [stem + "е", stem_transliterated + "e"]
          end

          def _indefinite_nominative_feminine
            [stem + "а", stem_transliterated + "a"]
          end

          def _indefinite_nominative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _indefinite_genitive_masculine
            [stem + "а", stem_transliterated + "a"]
          end

          def _indefinite_genitive_feminine
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _indefinite_genitive_plural
            [gen_pl_stem(stem, "е"), gen_pl_stem_transliterated(stem_transliterated, "e")]
          end

          def _indefinite_accusative_masculine
            if _indefinite_genitive_plural[0] == stem
              # If no epenthetic vowel in genitive plural, accusative is endingless
              [stem, stem_transliterated]
            else
              # Otherwise, an epethetic /e/ identical to the nominative is needed
              _indefinite_nominative_masculine
            end
          end

          def _indefinite_accusative_neuter
            [stem + "е", stem_transliterated + "e"]
          end

          def _indefinite_accusative_feminine
            [stem + "у", stem_transliterated + "u"]
          end

          def _indefinite_accusative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _indefinite_dative_masculine
            [stem + "ем", stem_transliterated + "em"]
          end

          def _indefinite_dative_feminine
            [stem + "ей", stem_transliterated + "ei"]
          end

          def _indefinite_dative_plural
            [stem + "ами", stem_transliterated + "ami"]
          end

          def _indefinite_partitive_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _indefinite_partitive_plural
            [stem + "еу", stem_transliterated + "eu"]
          end

          def _indefinite_locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _indefinite_locative_plural
            [stem + "ѣх", stem_transliterated + "ěh"]
          end

          def _indefinite_lative_singular
            [stem + "ун", stem_transliterated + "un"]
          end

          def _indefinite_lative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _definite_nominative_masculine
            [stem + "ей", stem_transliterated + "ei"]
          end

          def _definite_nominative_neuter
            [stem + "ее", stem_transliterated + "eie"]
          end

          def _definite_nominative_feminine
            [stem + "ая", stem_transliterated + "aia"]
          end

          def _definite_nominative_plural
            [stem + "ие", stem_transliterated + "ije"]
          end

          def _definite_genitive_masculine
            [desinence + "аево", desinence_transliterated + "áievo"]
          end

          def _definite_genitive_feminine
            [stem + "ѣе", stem_transliterated + "ěie"]
          end

          def _definite_genitive_plural
            [stem + "их", stem_transliterated + "ih"]
          end

          def _definite_accusative_masculine
            [stem + "ий", stem_transliterated + "ij"]
          end

          def _definite_accusative_neuter
            [stem + "ее", stem_transliterated + "eie"]
          end

          def _definite_accusative_feminine
            [stem + "аю", stem_transliterated + "aiu"]
          end

          def _definite_accusative_plural
            [stem + "ие", stem_transliterated + "ije"]
          end

          def _definite_dative_masculine
            [stem + "ием", stem_transliterated + "ijem"]
          end

          def _definite_dative_feminine
            [stem + "еюн", stem_transliterated + "eiun"]
          end

          def _definite_dative_plural
            [desinence + "иеми", desinence_transliterated + "íjemi"]
          end

          def _definite_partitive_singular
            [desinence + "аево", desinence_transliterated + "áievo"]
          end

          def _definite_partitive_plural
            [desinence + "евево", desinence_transliterated + "évevo"]
          end

          def _definite_locative_singular
            [stem + "ѣѣм", stem_transliterated + "ěiěm"]
          end

          def _definite_locative_plural
            [stem + "иех", stem_transliterated + "ijeh"]
          end

          def _definite_lative_singular
            [stem + "уюн", stem_transliterated + "uiun"]
          end

          def _definite_lative_plural
            [stem + "ѣѣ", stem_transliterated + "ěiě"]
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
                word = word.dup
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
            if (vowels.include?(word[-2]) && !vowels.include?(word[-3])) || (word[-1] == "j" && vowels.include?(word[-3]))
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
