require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module FinalR
          include Kethab::Regular

          def subtype
            "C3 = Ř"
          end

          def _present_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "η'ι"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ēyi")]
          end

          def _present_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "η'ι"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ēyi")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "εια"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "eya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "εια"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "eya")]
          end

          def _volitive_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ηνα"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ēna")]
          end

          def _volitive_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "α", :c3, "ηνα"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "a", :tc3, "ēna")]
          end
        end
      end
    end
  end
end
