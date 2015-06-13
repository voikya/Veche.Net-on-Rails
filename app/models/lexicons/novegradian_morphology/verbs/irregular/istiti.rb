require_relative '../i_conjugation/regular_dynamic2'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Istiti
          include IConjugation::RegularDynamic2

          def subtype
            "Irregular"
          end

          def _present_first_singular
            [stem_mutated + "ун", stem_transliterated_mutated + "un"]
          end

          def _present_first_dual
            [stem + "ева", stem_transliterated + "eva"]
          end

          def _present_first_plural
            [stem + "ем", stem_transliterated + "em"]
          end

          def _present_second_singular
            [stem + "еш", stem_transliterated + "eś"]
          end

          def _present_second_dual
            [stem + "ета", stem_transliterated + "eta"]
          end

          def _present_second_plural
            [stem + "ете", stem_transliterated + "ete"]
          end

          def _present_third_singular
            [stem + "ет", stem_transliterated + "et"]
          end

          def _present_third_plural
            [stem + "ут", stem_transliterated + "ut"]
          end

        end
      end
    end
  end
end
