require_relative 'regular_masculine'

module Morphology
  module Novegradian
    module Nouns
      module EStem
        module RegularNeuter
          include EStem::RegularMasculine

          def subtype
            "Regular Neuter"
          end

          def _accusative_singular
            [stem + "е", stem_transliterated + "e"]
          end

          def _accusative_singular_topicalized
            [stem + "е-те", stem_transliterated + "e-te"]
          end

          def _locative_plural
            [desinence + "ѣх", desinence_transliterated + "ě́h"]
          end

          def _lative_singular
            [desinence + "ен", desinence_transliterated + "én"]
          end
        end
      end
    end
  end
end
