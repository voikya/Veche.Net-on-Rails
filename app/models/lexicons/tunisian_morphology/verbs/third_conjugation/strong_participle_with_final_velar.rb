require_relative 'strong_participle'
require_relative 'final_velar'

module Morphology
  module Tunisian
    module Verbs
      module ThirdConjugation
        module StrongParticipleWithFinalVelar
          include ThirdConjugation::StrongParticiple
          include ThirdConjugation::FinalVelar

          def subtype
            "Strong Past Participle with Final C/G"
          end
        end
      end
    end
  end
end
