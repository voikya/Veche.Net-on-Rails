require_relative 'final_m'
require_relative 'metathesizing_r'

module Morphology
  module Tunisian
    module Verbs
      module FourthConjugation
        module FinalMAndMetathesizingR
          include FourthConjugation::FinalM
          include FourthConjugation::MetathesizingR

          def subtype
            "Final M and Metathesizing R"
          end
        end
      end
    end
  end
end
