require_relative '../e_conjugation/fleeting_stem_stressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Piuti
          include EConjugation::FleetingStemStressed

          def subtype
            "Irregular"
          end

          def _present_first_singular
            [present_stem + "юн", present_stem_transliterated + "un"]
          end

          def _present_first_dual
            [present_stem + "ева", present_stem_transliterated + "eva"]
          end

          def _present_first_plural
            [present_stem + "ем", present_stem_transliterated + "em"]
          end

          def _present_second_singular
            [present_stem + "еш", present_stem_transliterated + "eś"]
          end

          def _present_second_dual
            [present_stem + "ета", present_stem_transliterated + "eta"]
          end

          def _present_second_plural
            [present_stem + "ете", present_stem_transliterated + "ete"]
          end

          def _present_third_singular
            [present_stem + "ет", present_stem_transliterated + "et"]
          end

          def _present_third_plural
            [present_stem + "ют", present_stem_transliterated + "ut"]
          end

          def _imperative_second_singular
            [present_stem + "й", present_stem_transliterated]
          end

          def _imperative_second_dual
            [present_stem + "йта", present_stem_transliterated + "ta"]
          end

          def _imperative_second_plural
            [present_stem + "йте", present_stem_transliterated + "te"]
          end

          def _imperative_first_dual
            [present_stem + "ўта", present_stem_transliterated[0..-2] + "wta"]
          end

          def _imperative_first_plural
            [present_stem + "ймте", present_stem_transliterated + "mte"]
          end

          def _participle_active_imperfective
            [present_stem + "якье", remove_stress(present_stem_transliterated) + "ákje"]
          end

          def _adv_participle_imperfective
            [stem + "й", stem_transliterated]
          end

          private

          def present_stem
            stem.sub('пю', 'плу')
          end

          def present_stem_transliterated
            stem_transliterated.sub('piú', 'plú')
          end
        end
      end
    end
  end
end
