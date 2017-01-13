require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module FinalN
          include Akteb::Regular

          def subtype
            "C3 = N"
          end

          def _preterite_second_singular_masculine
            ["α" + stem[0..-2] + "ττα", "'a" + stem_transliterated[0..-2] + "tha"]
          end

          def _preterite_second_singular_feminine
            ["α" + stem[0..-2] + "τζζε", "'a" + stem_transliterated[0..-2] + "čhe"]
          end

          def _preterite_second_plural_masculine
            ["α" + stem[0..-2] + "ττυν", "'a" + stem_transliterated[0..-2] + "thun"]
          end

          def _preterite_second_plural_feminine
            ["α" + stem[0..-2] + "τζζιν", "'a" + stem_transliterated[0..-2] + "čhin"]
          end

          def _imperfect_first_singular
            ["α" + imperfect_stem[0..-2], "'a" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_singular_masculine
            ["α" + imperfect_stem[0..-2] + "τ", "'a" + imperfect_stem_transliterated[0..-2] + "t"]
          end

          def _imperfect_second_singular_feminine
            ["α" + imperfect_stem[0..-2] + "ς̄", "'a" + imperfect_stem_transliterated[0..-2] + "š"]
          end

          def _imperfect_first_plural
            ["α" + imperfect_stem[0..-2] + "ν", "'a" + imperfect_stem_transliterated[0..-2] + "n"]
          end

          def _imperfect_second_plural_masculine
            ["α" + imperfect_stem[0..-2] + "ττυν", "'a" + imperfect_stem_transliterated[0..-2] + "thun"]
          end

          def _imperfect_second_plural_feminine
            ["α" + imperfect_stem[0..-2] + "τζζιν", "'a" + imperfect_stem_transliterated[0..-2] + "čhin"]
          end
        end
      end
    end
  end
end
