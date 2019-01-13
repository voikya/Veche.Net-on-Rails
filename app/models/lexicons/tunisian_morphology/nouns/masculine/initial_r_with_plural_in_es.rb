require_relative 'initial_r'
require_relative 'plural_in_es'

module Morphology
  module Tunisian
    module Nouns
      module Masculine
        module InitialRWithPluralInEs
          include Masculine::InitialR
          include Masculine::PluralInEs

          def subtype
            "Initial R with Plural in -es"
          end
        end
      end
    end
  end
end
