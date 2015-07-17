module Morphology
  module Novegradian
    module Adjectives
      module Absolute
        module StemStressed
          def subtype
            "Stem-Stressed"
          end

          def _indefinite_nominative_masculine
            [stem + "е", stem_transliterated + "e"]
          end

          def _indefinite_nominative_neuter
            [stem + "о", stem_transliterated + "o"]
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
            [gen_pl_stem(stem, "о"), gen_pl_stem_transliterated(stem_transliterated, "o")]
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
            [stem + "о", stem_transliterated + "o"]
          end

          def _indefinite_accusative_feminine
            [stem + "у", stem_transliterated + "u"]
          end

          def _indefinite_accusative_plural
            [stem + "и", stem_transliterated + "i"]
          end

          def _indefinite_dative_masculine
            [stem + "ом", stem_transliterated + "om"]
          end

          def _indefinite_dative_feminine
            [stem + "ой", stem_transliterated + "oi"]
          end

          def _indefinite_dative_plural
            [stem + "ами", stem_transliterated + "ami"]
          end

          def _indefinite_partitive_singular
            [stem + "а", stem_transliterated + "a"]
          end

          def _indefinite_partitive_plural
            [stem + "оу", stem_transliterated + "ou"]
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
            [desinence + "ое", desinence_transliterated + "oie"]
          end

          def _definite_nominative_feminine
            [desinence + "ая", desinence_transliterated + "aia"]
          end

          def _definite_nominative_plural
            [desinence + "ие", desinence_transliterated + "ije"]
          end

          def _definite_genitive_masculine
            [tertiary + "аево", tertiary_transliterated + "áievo"]
          end

          def _definite_genitive_feminine
            [desinence + "ѣе", desinence_transliterated + "ěie"]
          end

          def _definite_genitive_plural
            [desinence + "их", desinence_transliterated + "ih"]
          end

          def _definite_accusative_masculine
            [stem + "ий", stem_transliterated + "ij"]
          end

          def _definite_accusative_neuter
            [desinence + "ое", desinence_transliterated + "oie"]
          end

          def _definite_accusative_feminine
            [desinence + "аю", desinence_transliterated + "aiu"]
          end

          def _definite_accusative_plural
            [desinence + "ие", desinence_transliterated + "ije"]
          end

          def _definite_dative_masculine
            [desinence + "ием", desinence_transliterated + "ijem"]
          end

          def _definite_dative_feminine
            [desinence + "оюн", desinence_transliterated + "oiun"]
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
            [desinence + "ѣѣм", desinence_transliterated + "ěiěm"]
          end

          def _definite_locative_plural
            [desinence + "иех", desinence_transliterated + "ijeh"]
          end

          def _definite_lative_singular
            [desinence + "уюн", desinence_transliterated + "uiun"]
          end

          def _definite_lative_plural
            [desinence + "ѣѣ", desinence_transliterated + "ěiě"]
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
              when *vowels
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
