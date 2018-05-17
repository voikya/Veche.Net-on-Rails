require_relative '../first_conjugation/regular'

module Morphology
  module Tunisian
    module Verbs
      module Irregular
        module Ydda
          include FirstConjugation::Regular

          def conjugation
            "Irregular"
          end

          def subtype
            "yddá"
          end

          def _infinitive_singular
            "yddá"
          end

          def _present_participle_masculine
            "den"
          end

          def _present_participle_feminine
            "dène"
          end

          def _present_participle_plural
            "deis"
          end

          def _past_participle_masculine
            "dat"
          end

          def _past_participle_feminine
            "date"
          end

          def _past_participle_plural
            "dats"
          end

          def _present_first_singular
            "dí"
          end

          def _present_first_plural
            "yddams"
          end

          def _present_second_plural
            "yddats"
          end

          def _imperfect_first_singular
            "yddave"
          end

          def _imperfect_second_singular
            "yddavs"
          end

          def _imperfect_third_singular
            "yddave"
          end

          def _imperfect_first_plural
            "yddivams"
          end

          def _imperfect_second_plural
            "yddivats"
          end

          def _imperfect_third_plural
            "yddavé"
          end

          def _subjunctive_first_singular
            "dí"
          end

          def _subjunctive_third_singular
            "dí"
          end

          def _subjunctive_first_plural
            "yddèms"
          end

          def _subjunctive_second_plural
            "yddèts"
          end

          def _future_complex_first_singular
            "viuc l-uddá"
          end

          def _future_complex_second_singular
            "vucs l-uddá"
          end

          def _future_complex_third_singular
            "vuc l-uddá"
          end

          def _imperative_second_singular
            "dí, dá, dad"
          end

          def _imperative_second_plural
            "dadit, daít"
          end
        end
      end
    end
  end
end
