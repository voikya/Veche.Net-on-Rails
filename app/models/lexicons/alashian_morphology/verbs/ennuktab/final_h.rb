require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module FinalH
          include Ennuktab::Biconsonantal

          def subtype
            "C3 = H"
          end
        end
      end
    end
  end
end
