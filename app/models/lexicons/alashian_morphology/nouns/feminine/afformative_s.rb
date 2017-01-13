require_relative 'unmarked_singular'

module Morphology
  module Alashian
    module Nouns
      module Feminine
        module AfformativeS
          include Feminine::UnmarkedSingular

          def subtype
            "Afformative -s"
          end

          def _absolute_plural
            [plural_stem + "ους̄", plural_stem_transliterated + "ūš"]
          end

          def _construct_plural
            [plural_stem + "ουτ", plural_stem_transliterated + "ūt"]
          end

          private

          def plural_stem
            stem.gsub(/(?:ουσ|εισ)$/, {
              "ουσ" => "υσσ",
              "εισ" => "ισσ"
            })
          end

          def plural_stem_transliterated
            stem_transliterated.gsub(/(?:ūs|īs)$/, {
              "ūs" => "uss",
              "īs" => "iss"
            })
          end
        end
      end
    end
  end
end
