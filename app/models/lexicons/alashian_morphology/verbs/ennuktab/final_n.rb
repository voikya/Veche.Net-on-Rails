require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module FinalN
          include Ennuktab::Regular

          def subtype
            "C3 = N"
          end

          def _preterite_second_singular_masculine
            ["ε" + stem[0..-2] + "ττα", "'e" + stem_transliterated[0..-2] + "tha"]
          end

          def _preterite_second_singular_feminine
            ["ε" + stem[0..-2] + "τζζε", "'e" + stem_transliterated[0..-2] + "čhe"]
          end

          def _preterite_second_plural_masculine
            ["ε" + stem[0..-2] + "ττυν", "'e" + stem_transliterated[0..-2] + "thun"]
          end

          def _preterite_second_plural_feminine
            ["ε" + stem[0..-2] + "τζζιν", "'e" + stem_transliterated[0..-2] + "čhin"]
          end

          def _imperfect_first_singular
            ["ε" + imperfect_stem[0..-2], "'e" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_singular_masculine
            ["ε" + imperfect_stem[0..-2] + "τ", "'e" + imperfect_stem_transliterated[0..-2] + "t"]
          end

          def _imperfect_second_singular_feminine
            ["ε" + imperfect_stem[0..-2] + "ς̄", "'e" + imperfect_stem_transliterated[0..-2] + "š"]
          end

          def _imperfect_first_plural
            ["ε" + imperfect_stem[0..-2] + "ν", "'e" + imperfect_stem_transliterated[0..-2] + "n"]
          end

          def _imperfect_second_plural_masculine
            ["ε" + imperfect_stem[0..-2] + "ττυν", "'e" + imperfect_stem_transliterated[0..-2] + "thun"]
          end

          def _imperfect_second_plural_feminine
            ["ε" + imperfect_stem[0..-2] + "τζζιν", "'e" + imperfect_stem_transliterated[0..-2] + "čhin"]
          end
        end
      end
    end
  end
end
