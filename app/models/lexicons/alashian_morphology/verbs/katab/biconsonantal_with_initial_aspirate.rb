require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module BiconsonantalWithInitialAspirate
          include Katab::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", :c1, :v, :c2), template("'ə", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, :v, :c2), template("tə", :tc1, :tv, :tc2)]
          end

          def _present_second_singular_feminine
            [template("τα", :c1, :v, :c2, "ει"), template("tə", :tc1, :tv, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ια", :c1, :v, :c2), template("yə", :tc1, :tv, :tc2)]
          end

          def _present_third_singular_feminine
            [template("ια", :c1, :v, :c2, "ει"), template("yə", :tc1, :tv, :tc2, "ī")]
          end

          def _present_first_plural
            [template("να", :c1, :v, :c2, "ου"), template("nə", :tc1, :tv, :tc2, "ū")]
          end

          def _present_second_plural
            [template("τα", :c1, :v, :c2, "ου"), template("tə", :tc1, :tv, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ια", :c1, :v, :c2, "ου"), template("yə", :tc1, :tv, :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :v, :c2), template("və", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :v, :c2), template("vanə", :tc1, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :v, :c2), template("vatə", :tc1, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, :v, :c2, "α"), template("'ə", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τα", :c1, :v, :c2, "α"), template("tə", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τα", :c1, :v, :c2, "ια"), template("tə", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ια", :c1, :v, :c2, "α"), template("yə", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ια", :c1, :v, :c2, "ια"), template("yə", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("να", :c1, :v, :c2, "υ'α"), template("nə", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τα", :c1, :v, :c2, "υ'α"), template("tə", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ια", :c1, :v, :c2, "υ'α"), template("yə", :tc1, :tv, :tc2, "uwa")]
          end

          def _passive_participle
            [template("μα", :c1, :v, :c2), template("mə", :tc1, :tv, :tc2)]
          end
        end
      end
    end
  end
end
