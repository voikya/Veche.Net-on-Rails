require_relative 'regular'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module InitialR
          include Feminine::Regular

          def subtype
            "Initial R"
          end

          def _definite_singular_absolute
            "il " + singular
          end
        end
      end
    end
  end
end
