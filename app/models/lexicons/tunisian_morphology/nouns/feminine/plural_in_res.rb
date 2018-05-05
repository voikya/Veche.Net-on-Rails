require_relative 'unmarked'

module Morphology
  module Tunisian
    module Nouns
      module Feminine
        module PluralInRes
          include Feminine::Unmarked

          def subtype
            "Plural in -res"
          end

          private

          def plural
            strong + "res"
          end
        end
      end
    end
  end
end
