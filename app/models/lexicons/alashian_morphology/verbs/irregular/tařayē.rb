require_relative '../takteb/final_glide'

module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Taraye
          include Takteb::FinalGlide

          def subtype
            "Irregular"
          end

          def _preterite_first_singular
            ["ταρ̄α'ιη'υετ", "tařayēwet"]
          end

          def _preterite_second_singular_masculine
            ["ταρ̄αιητα", "tařayēta"]
          end

          def _preterite_second_singular_feminine
            ["ταρ̄αιησ̄ε", "tařayēše"]
          end

          def _preterite_third_singular_masculine
            ["ταρ̄αιη", "tařayē"]
          end

          def _preterite_third_singular_feminine
            ["ταρ̄αιηυω", "tařayēwā"]
          end

          def _preterite_first_plural
            ["ταρ̄αιηνω", "tařayēnā"]
          end

          def _preterite_second_plural_masculine
            ["ταρ̄αιητυν", "tařayētun"]
          end

          def _preterite_second_plural_feminine
            ["ταρ̄αιησ̄ιν", "tařayēšin"]
          end

          def _preterite_third_plural
            ["ταρ̄αιηυου", "tařayēwū"]
          end

          def _imperfect_first_singular
            ["ταρ̄αιη", "tařayē"]
          end

          def _imperfect_second_singular_masculine
            ["ταρ̄α'ιη'υετ", "tařayēwet"]
          end

          def _imperfect_second_singular_feminine
            ["ταρ̄α'ιη'υες̄", "tařayēweš"]
          end

          def _imperfect_third_singular_masculine
            ["ταρ̄αιη", "tařayē"]
          end

          def _imperfect_third_singular_feminine
            ["ταρ̄α'ιη'υω", "tařayēwā"]
          end

          def _imperfect_first_plural
            ["ταρ̄α'ιη'υεν", "tařayēwen"]
          end

          def _imperfect_second_plural_masculine
            ["ταρ̄αιητυν", "tařayētun"]
          end

          def _imperfect_second_plural_feminine
            ["ταρ̄αιησ̄ιν", "tařayēšin"]
          end

          def _imperfect_third_plural
            ["ταρ̄α'ιη'υου", "tařayēwū"]
          end

          def _imperative_masculine_singular
            ["τερ̄αιω", "teřayā"]
          end

          def _imperative_feminine_singular
            ["τερ̄αιαυει", "teřayawī"]
          end

          def _imperative_plural
            ["τερ̄αιαυου", "teřayawū"]
          end
        end
      end
    end
  end
end
