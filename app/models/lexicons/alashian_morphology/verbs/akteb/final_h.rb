require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Akteb
        module FinalH
          include Akteb::Biconsonantal

          def subtype
            "C3 = H"
          end
        end
      end
    end
  end
end
