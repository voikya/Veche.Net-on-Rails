require_relative '../e_conjugation/velar_stem'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Ceikji
          include EConjugation::VelarStem

          def subtype
            "Irregular"
          end

          def _present_first_singular
            [present_base + "ун", present_base_transliterated + "un"]
          end

          def _present_first_dual
            [present_base + "ева", present_base_transliterated + "eva"]
          end

          def _present_first_plural
            [present_base + "ем", present_base_transliterated + "em"]
          end

          def _present_second_singular
            [present_base + "еш", present_base_transliterated + "eś"]
          end

          def _present_second_dual
            [present_base + "ета", present_base_transliterated + "eta"]
          end

          def _present_second_plural
            [present_base + "ете", present_base_transliterated + "ete"]
          end

          def _present_third_singular
            [present_base + "ет", present_base_transliterated + "et"]
          end

          def _present_third_plural
            [present_base + "ут", present_base_transliterated + "ut"]
          end

          def _imperative_second_singular
            [imperative_base + "и", imperative_base_transliterated + "í"]
          end

          def _imperative_second_dual
            [imperative_base + "ѣта", imperative_base_transliterated + "ě́ta"]
          end

          def _imperative_second_plural
            [imperative_base + "ѣте", imperative_base_transliterated + "ě́te"]
          end

          def _imperative_first_dual
            [imperative_base + "ѣута", imperative_base_transliterated + "ě́uta"]
          end

          def _imperative_first_plural
            [imperative_base + "ѣмте", imperative_base_transliterated + "ě́mte"]
          end

          private

          def present_base
            stem.gsub('цег', 'кеѕ')
          end

          def present_base_transliterated
            stem_transliterated.gsub('cég', 'kédz')
          end

          def imperative_base
            present_base
          end

          def imperative_base_transliterated
            desinence_transliterated.gsub('ceg', 'kedz')
          end
        end
      end
    end
  end
end
