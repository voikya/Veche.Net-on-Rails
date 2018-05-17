require_relative 'vowelless_stem_with_initial_y'
require_relative 'final_velar'

module Morphology
  module Tunisian
    module Verbs
      module FirstConjugation
        module VowellessStemWithInitialYAndFinalVelar
          include FirstConjugation::VowellessStemWithInitialY
          include FirstConjugation::FinalVelar

          def subtype
            "Vowelless Stem with Initial Y and Final C/G"
          end

          def _present_participle_masculine
            weak + "hèn"
          end

          def _present_participle_feminine
            weak + "hène"
          end

          def _present_participle_plural
            weak + "heis"
          end

          def _imperfect_first_plural
            weak + "hivams"
          end

          def _imperfect_second_plural
            weak + "hivats"
          end

          def _subjunctive_first_plural
            weak + "hèms"
          end

          def _subjunctive_second_plural
            weak + "hèts"
          end
        end
      end
    end
  end
end
