require_relative 'final_y'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialNAndFinalY
          include Katab::FinalY

          def subtype
            "C1 = N, C3 = Y"
          end

          def _passive_participle
            [template("μα", root.c2 * 2, "ου"), template("ma", root.tc2 * 2, "ū")]
          end

          private

          def present_stem(long_vowel: true, suffix: nil)
            v = long_vowel ? :v : :short_v

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(root.c2 * 2, v, :c3, suffix)
            else
              template(root.c2 * 2, v, :c3)
            end
          end

          def present_stem_transliterated(long_vowel: true, suffix: nil)
            v = long_vowel ? :tv : :short_tv

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(root.tc2 * 2, v, :tc3, suffix)
            else
              template(root.tc2 * 2, v, :tc3)
            end
          end
        end
      end
    end
  end
end
