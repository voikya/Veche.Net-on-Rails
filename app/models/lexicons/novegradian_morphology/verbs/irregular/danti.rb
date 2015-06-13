require_relative '../e_conjugation/fleeting_stem_unstressed'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Danti
          include EConjugation::FleetingStemUnstressed

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem + "ти", stem_transliterated + "ti"]
          end

          def _past_singular_feminine
            [stem[0..-2] + "ла", stem_transliterated[0..-2] + "la"]
          end
        end
      end
    end
  end
end
