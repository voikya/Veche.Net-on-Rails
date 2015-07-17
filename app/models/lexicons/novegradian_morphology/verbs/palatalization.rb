module Morphology
  module Novegradian
    module Verbs
      module Palatalization
        def stem_mutated(opts = {})
          if (!opts[:labial_only] || labial_stem?) && !no_mutation?
            mutate stem
          else
            stem
          end
        end

        def stem_transliterated_mutated(opts = {})
          if (!opts[:labial_only] || labial_stem?) && !no_mutation?
            mutate_with_transliteration stem_transliterated
          else
            stem_transliterated
          end
        end

        def desinence_mutated(opts = {})
          if (!opts[:labial_only] || labial_stem?) && !no_mutation?
            mutate desinence
          else
            desinence
          end
        end

        def desinence_transliterated_mutated(opts = {})
          if (!opts[:labial_only] || labial_stem?) && !no_mutation?
            mutate_with_transliteration desinence_transliterated
          else
            desinence_transliterated
          end
        end

        def mutate(str)
          case str
            when /(ст|ск)$/ then str[0..-3] + "шкь"
            when /(зд|зг)$/ then str[0..-3] + "жгь"
            when /т$/ then str[0..-2] + "кь"
            when /д$/ then str[0..-2] + "гь"
            when /к$/ then str[0..-2] + "ц"
            when /(г|ғ)$/ then str[0..-2] + "ж"
            when /(с|ш)$/ then str[0..-2] + "хь"
            when /(з|ж)$/ then str[0..-2] + "ғь"
            when /н$/ then str[0..-2] + "нь"
            when /(п|б|м)$/ then str + "л"
            when /ив$/ then str[0..-2] + "ўл"
            when /в$/ then str[0..-2] + "ул"
            when /х$/ then str[0..-2] + "ш"
            else str
          end
        end

        def mutate_with_transliteration(str)
          case str
            when /(st|sk)$/ then str[0..-3] + "śkj"
            when /(zd|zg)$/ then str[0..-3] + "źgj"
            when /t$/ then str[0..-2] + "kj"
            when /d$/ then str[0..-2] + "gj"
            when /k$/ then str[0..-2] + "c"
            when /(g|ǧ)$/ then str[0..-2] + "ź"
            when /(s|ś)$/ then str[0..-2] + "hj"
            when /([^d]z|ź)$/ then str[0..-2] + "ğj"
            when /n$/ then str[0..-2] + "nj"
            when /(p|b|m)$/ then str + "l"
            when /iv$/ then str[0..-2] + "wl"
            when /v$/ then str[0..-2] + "ul"
            when /h$/ then str[0..-2] + "ś"
            else str
          end
        end

        private

        def labial_stem?
          %w(п б м в).include? stem[-1]
        end
      end
    end
  end
end
