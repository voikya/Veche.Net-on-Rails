require_relative '../feminine/regular'

module Morphology
  module Alashian
    module Nouns
      module Irregular
        module Axa
          include Feminine::Regular

          def declension
            "Feminine Noun"
          end

          def subtype
            "Irregular"
          end

          def _absolute_singular
            ["αχω", "'axā"]
          end

          def _absolute_plural
            ["αχαηυως̄", "'axahuoš"]
          end

          def _construct_singular
            ["αχετ", "'axet"]
          end

          def _construct_plural
            ["αχαηουτ", "'axahūt"]
          end
        end
      end
    end
  end
end
