require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module FinalY
          include Ketheb::Regular

          def subtype
            "C3 = Y"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "ἠ"), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ἠ"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ἠ"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ησ̄ε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēše")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ηνω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēnā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ētun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ησ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēšin")]
          end

          def _imperfect_first_singular
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "η"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "η"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ē")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ητ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēt")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ητ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēt")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ης̄"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēš")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ης̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "η"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "η"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ē")]
            end
          end

          def _imperfect_first_plural
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ην"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēn")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ην"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēn")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ητυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ētun")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ητυν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ētun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_aspiratable?
              [template(:c1, "α", :c2_geminated_or_aspirated, "ησ̄ιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēšin")]
            else
              [template(:c1, "ε", :c2_geminated_or_aspirated, "ησ̄ιν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēšin")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "η"), template("va", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενει", :c1, "α", :c2_geminated_or_aspirated, "η"), template("venī", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _pf_subjunctive_second
            [template("в̄ετει", :c1, "α", :c2_geminated_or_aspirated, "η"), template("vetī", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "η"), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _imperative_masculine_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "η"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _infinitive
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ου"), template("ma", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _active_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "ει"), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "ī",)]
          end
        end
      end
    end
  end
end
