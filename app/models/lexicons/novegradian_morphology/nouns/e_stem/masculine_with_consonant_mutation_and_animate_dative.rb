module Morphology
  module Novegradian
    module Nouns
      module EStem
        module MasculineWithConsonantMutationAndAnimateDative
          def declension
            "E (Fourth) Declension"
          end

          def subtype
            "Masculine with Consonant Mutation in Plural and Animate Dative"
          end

          def _nominative_singular
            [stem + "е", stem_transliterated + "e"]
          end

          def _nominative_plural
            [stem_mutated + "и", stem_transliterated_mutated + "i"]
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
            [stem + "ой", stem_transliterated + "oi"]
          end

          def _dative_plural
            [desinence_mutated + "ам", desinence_transliterated_mutated + "ám"]
          end

          def _partitive_singular
            if stem =~ /к[^ь]?$/
              _genitive_singular
            else
              [desinence + "ек", desinence_transliterated + "ék"]
            end
          end

          def _partitive_plural
            [stem_mutated + "еу", stem_transliterated_mutated + "eu"]
          end

          def _locative_singular
            [stem + "ѣ", stem_transliterated + "ě"]
          end

          def _locative_plural
            [stem_mutated + "ѣх", stem_transliterated_mutated + "ěh"]
          end

          def _lative_singular
            [stem + "ен", stem_transliterated + "en"]
          end

          def _lative_plural
            [stem_mutated + "ѣ", stem_transliterated_mutated + "ě"]
          end

          def stem_mutated
            mutate stem
          end

          def stem_transliterated_mutated
            mutate_with_transliteration stem_transliterated
          end

          def desinence_mutated
            mutate desinence
          end

          def desinence_transliterated_mutated
            mutate_with_transliteration desinence_transliterated
          end

          def mutate(str)
            case str
              when /ст$/ then str[0..-3] + "шкь"
              when /т$/ then str[0..-2] + "кь"
              when /д$/ then str[0..-2] + "гь"
              when /к$/ then str[0..-2] + "ц"
              when /(г|ғ)$/ then str[0..-2] + "ж"
              when /с$/ then str[0..-2] + "хь"
              when /з$/ then str[0..-2] + "ғь"
              when /н$/ then str[0..-2] + "нь"
            end
          end

          def mutate_with_transliteration(str)
            case str
              when /st$/ then str[0..-3] + "śkj"
              when /t$/ then str[0..-2] + "kj"
              when /d$/ then str[0..-2] + "gj"
              when /k$/ then str[0..-2] + "c"
              when /(g|ǧ)$/ then str[0..-2] + "ź"
              when /s$/ then str[0..-2] + "hj"
              when /z$/ then str[0..-2] + "ğj"
              when /n$/ then str[0..-2] + "nj"
            end
          end
        end
      end
    end
  end
end
