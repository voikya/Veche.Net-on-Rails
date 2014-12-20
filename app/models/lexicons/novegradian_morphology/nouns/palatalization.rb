module Morphology
  module Novegradian
    module Nouns
      module Palatalization
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
            when /(с|ш)$/ then str[0..-2] + "хь"
            when /(з|ж)$/ then str[0..-2] + "ғь"
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
            when /(s|ś)$/ then str[0..-2] + "hj"
            when /(z|ź)$/ then str[0..-2] + "ğj"
            when /n$/ then str[0..-2] + "nj"
          end
        end
      end
    end
  end
end
