require_relative '../e_conjugation/regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Gonati
          include EConjugation::RegularEndingStressed

          def subtype
            "Irregular"
          end

          def _present_first_singular
            [present_desinence + "ун", present_desinence_transliterated + "ún"]
          end

          def _present_first_dual
            [present_desinence + "ева", present_desinence_transliterated + "éva"]
          end

          def _present_first_plural
            [present_desinence + "ем", present_desinence_transliterated + "ém"]
          end

          def _present_second_singular
            [present_desinence + "еш", present_desinence_transliterated + "éś"]
          end

          def _present_second_dual
            [present_desinence + "ета", present_desinence_transliterated + "éta"]
          end

          def _present_second_plural
            [present_desinence + "ете", present_desinence_transliterated + "éte"]
          end

          def _present_third_singular
            [present_desinence + "ет", present_desinence_transliterated + "ét"]
          end

          def _present_third_plural
            [present_desinence + "ут", present_desinence_transliterated + "út"]
          end

          private

          def present_desinence
            desinence.sub(/го?н/, 'жен')
          end

          def present_desinence_transliterated
            desinence_transliterated.sub(/go?n/, 'źen')
          end
        end
      end
    end
  end
end
