require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module FinalH
          include Nistuktab::Biconsonantal

          def subtype
            "C3 = H"
          end
        end
      end
    end
  end
end
