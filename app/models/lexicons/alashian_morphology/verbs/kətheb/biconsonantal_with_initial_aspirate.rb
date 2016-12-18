require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module BiconsonantalWithInitialAspirate
          include Ketheb::InitialAspirate

          def subtype
            "Biconsonantal Root with C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_second_singular_feminine
            [template("τα", :c1, "α", :c2, "α", :c3, "ει"), template("tə", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_third_singular_feminine
            [template("ια", :c1, "α", :c2, "α", :c3, "ει"), template("yə", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("να", :c1, "α", :c2, "α", :c3, "ου"), template("nə", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τα", :c1, "α", :c2, "α", :c3, "ου"), template("tə", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ια", :c1, "α", :c2, "α", :c3, "ου"), template("yə", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end
        end
      end
    end
  end
end
