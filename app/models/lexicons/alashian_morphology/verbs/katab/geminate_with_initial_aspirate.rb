require_relative 'geminate'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module GeminateWithInitialAspirate
          include Katab::Geminate

          def subtype
            "Geminate Root with C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c1, "ω", :c2), template("'ə", :tc1, "ā", :tc2)]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, "ω", :c2), template("tə", :tc1, "ā", :tc2)]
          end

          def _present_second_singular_feminine
            [template("τα", :c1, "α", :c2, :c2, "ει"), template("tə", :tc1, "a", :tc2, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ια", :c1, "ω", :c2), template("yə", :tc1, "ā", :tc2)]
          end

          def _present_third_singular_feminine
            [template("ια", :c1, "α", :c2, :c2, "ει"), template("yə", :tc1, "a", :tc2, :tc2, "ī")]
          end

          def _present_first_plural
            [template("να", :c1, "α", :c2, :c2, "ου"), template("nə", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _present_second_plural
            [template("τα", :c1, "α", :c2, :c2, "ου"), template("tə", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ια", :c1, "α", :c2, :c2, "ου"), template("yə", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2), template("və", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, "α", :c2), template("vanə", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, "α", :c2), template("vatə", :tc1, "a", :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "α", :c2, :c2, "α"), template("'ə", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τα", :c1, "α", :c2, :c2, "α"), template("tə", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τα", :c1, "α", :c2, :c2, "ι'α"), template("tə", :tc1, "a", :tc2, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ια", :c1, "α", :c2, :c2, "α"), template("yə", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ια", :c1, "α", :c2, :c2, "ι'α"), template("yə", :tc1, "a", :tc2, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("να", :c1, "α", :c2, :c2, "υ'α"), template("nə", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τα", :c1, "α", :c2, :c2, "υ'α"), template("tə", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ια", :c1, "α", :c2, :c2, "υ'α"), template("yə", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _volitive_first_singular
            [template("α", :c1, "α", :c2, :c2, "αννα"), template("'ə", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _volitive_second_singular_masculine
            [template("τα", :c1, "α", :c2, :c2, "αννα"), template("tə", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ια", :c1, "α", :c2, :c2, "αννα"), template("yə", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _passive_participle
            [template("μα", :c1, :c2, "ου", :c3), template("mə", :tc1, :tc2, "ū", :tc3)]
          end
        end
      end
    end
  end
end
