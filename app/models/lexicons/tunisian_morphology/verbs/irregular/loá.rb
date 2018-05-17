require_relative '../first_conjugation/regular'

module Morphology
  module Tunisian
    module Verbs
      module Irregular
        module Loa
          include FirstConjugation::Regular

          def conjugation
            "Irregular"
          end

          def subtype
            "loá"
          end

          def _infinitive_singular
            "loá"
          end

          def _infinitive_plural
            "loánes"
          end

          def _present_participle_masculine
            "loén"
          end

          def _present_participle_feminine
            "loéne"
          end

          def _present_participle_plural
            "loeis"
          end

          def _present_first_singular
            "lí"
          end

          def _present_first_plural
            "loáms"
          end

          def _present_second_plural
            "loáts"
          end

          def _imperfect_first_singular
            "loáve"
          end

          def _imperfect_second_singular
            "loávs"
          end

          def _imperfect_third_singular
            "loáve"
          end

          def _subjunctive_first_singular
            "lí"
          end

          def _subjunctive_third_singular
            "lí"
          end

          def _future_simple_first_singular
            "luray"
          end

          def _future_simple_second_singular
            "lurais"
          end

          def _future_simple_third_singular
            "luray"
          end

          def _future_simple_first_plural
            "lurems"
          end

          def _future_simple_second_plural
            "lurets"
          end

          def _future_simple_third_plural
            "luré"
          end

          def _imperative_second_singular
            "lí"
          end

          def _imperative_second_plural
            "lèvit, leít"
          end
        end
      end
    end
  end
end
