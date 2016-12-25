require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module FinalY
          include Kethab::Regular

          def subtype
            "C3 = Y"
          end

          def _present_first_singular
            [template("υ", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("'u", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _present_second_singular_masculine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _present_third_singular_masculine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωσ̄ε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āše")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωνω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ānā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ātun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωσ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āšin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ω"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ā")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ωτ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āt")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ωτ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "āt")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ως̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āš")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ως̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "āš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ω"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ā")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ων"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ān")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ων"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a", :tc3_lenited, "ān")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ωτυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ātun")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ωτυν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ātun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ωσ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āšin")]
            else
              [template(:c1, "υ", :c2_geminated_or_aspirated, "ωσ̄ιν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "āšin")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄υ", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("vu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανου", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("vanū", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _pf_subjunctive_second
            [template("в̄ατου", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("vatū", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _infinitive
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("ma", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _passive_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "η"), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end
        end
      end
    end
  end
end
