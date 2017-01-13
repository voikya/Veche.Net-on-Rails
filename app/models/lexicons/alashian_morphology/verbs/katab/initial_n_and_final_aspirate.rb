require_relative 'final_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialNAndFinalAspirate
          include Katab::FinalAspirate

          def subtype
            "C1 = N, C3 = PH/TH/KH/TSH/ČH"
          end

          def _passive_participle
            [template("μα", root.c2 * 2, "ου", :c3), template("ma", root.tc2 * 2, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true, suffix: nil)
            v = long_vowel ? :v : "α"

            # Pass suffix to template to properly handle aspiration
            if suffix
              template(root.c2 * 2, v, :c3, suffix)
            else
              template(root.c2 * 2, v, :c3)
            end
          end

          def present_stem_transliterated(long_vowel: true, suffix: nil)
            v = long_vowel ? :tv : "ə"

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
