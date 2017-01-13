require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module FinalH
          include Staktab::Biconsonantal

          def subtype
            "C3 = H"
          end
        end
      end
    end
  end
end
