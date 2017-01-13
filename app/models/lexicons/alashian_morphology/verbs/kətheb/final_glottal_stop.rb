require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module FinalGlottalStop
          include Ketheb::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "α"), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "α"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ει"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ī")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "α"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ει"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, "α", :c2_geminated_or_aspirated, "ου"), template("ni", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ου"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ου"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ū")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ηττα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ētha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητζζε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēčhe")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "η"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ē")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ηννω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēnnā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ηττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ητζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ēčhin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ε"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ἠτ"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ἠς̄"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ε"), template(:tc1, "e", :tc2_geminated_or_aspirated, "e")]
          end

          def _imperfect_first_plural
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ἠν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ε", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "e", :tc2_geminated_or_aspirated, "əčhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2_geminated_or_aspirated, "ε"), template("va", :tc1, "ə", :tc2_geminated_or_aspirated, "e")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενει", :c1, "α", :c2_geminated_or_aspirated, "ε"), template("venī", :tc1, "ə", :tc2_geminated_or_aspirated, "e")]
          end

          def _pf_subjunctive_second
            [template("в̄ετει", :c1, "α", :c2_geminated_or_aspirated, "ε"), template("vetī", :tc1, "ə", :tc2_geminated_or_aspirated, "e")]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "ε"), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "e")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ιια"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ιια"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υυα"), template("ni", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υυα"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υυα"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
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
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "ι"), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "i")]
          end
        end
      end
    end
  end
end
