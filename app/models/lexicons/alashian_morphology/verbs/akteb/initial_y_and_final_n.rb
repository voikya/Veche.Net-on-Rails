require_relative 'initial_y'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module InitialYAndFinalN
          include Akteb::InitialY

          def subtype
            "C1 = Y, C3 = N"
          end

          def _preterite_second_singular_masculine
            ["η" + stem[0..-2] + "ττα", "'ē" + stem_transliterated[0..-2] + "tha"]
          end

          def _preterite_second_singular_feminine
            ["η" + stem[0..-2] + "τζζε", "'ē" + stem_transliterated[0..-2] + "čhe"]
          end

          def _preterite_second_plural_masculine
            ["η" + stem[0..-2] + "ττυν", "'ē" + stem_transliterated[0..-2] + "thun"]
          end

          def _preterite_second_plural_feminine
            ["η" + stem[0..-2] + "τζζιν", "'ē" + stem_transliterated[0..-2] + "čhin"]
          end

          def _imperfect_first_singular
            ["η" + imperfect_stem[0..-2], "'ē" + imperfect_stem_transliterated[0..-2]]
          end

          def _imperfect_second_singular_masculine
            ["η" + imperfect_stem[0..-2] + "τ", "'ē" + imperfect_stem_transliterated[0..-2] + "t"]
          end

          def _imperfect_second_singular_feminine
            ["η" + imperfect_stem[0..-2] + "ς̄", "'ē" + imperfect_stem_transliterated[0..-2] + "š"]
          end

          def _imperfect_first_plural
            ["η" + imperfect_stem[0..-2] + "ν", "'ē" + imperfect_stem_transliterated[0..-2] + "n"]
          end

          def _imperfect_second_plural_masculine
            ["η" + imperfect_stem[0..-2] + "ττυν", "'ē" + imperfect_stem_transliterated[0..-2] + "thun"]
          end

          def _imperfect_second_plural_feminine
            ["η" + imperfect_stem[0..-2] + "τζζιν", "'ē" + imperfect_stem_transliterated[0..-2] + "čhin"]
          end
        end
      end
    end
  end
end
