require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module FinalGlottalStop
          include Kethab::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            [template("α", :c1, "α", :c2_geminated_or_aspirated, "α"), template("'a", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", :c2_geminated_or_aspirated, "α"), template("ti", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", :c2_geminated_or_aspirated, "α"), template("yi", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτ"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωττα"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτζζε"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āčhe")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωννω"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "ānnā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωττυν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2_geminated_or_aspirated, "ωτζζιν"), template(:tc1, "ə", :tc2_geminated_or_aspirated, "āčhin")]
          end

          def _imperfect_first_singular
            [template(:c1, "υ", :c2_geminated_or_aspirated, "α"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "υ", :c2_geminated_or_aspirated, "ὠτ"), template(:tc1, "u", :tc2_geminated_or_aspirated, "āt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "υ", :c2_geminated_or_aspirated, "ὠς̄"), template(:tc1, "u", :tc2_geminated_or_aspirated, "āš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "υ", :c2_geminated_or_aspirated, "α"), template(:tc1, "u", :tc2_geminated_or_aspirated, "a")]
          end

          def _imperfect_first_plural
            [template(:c1, "υ", :c2_geminated_or_aspirated, "ὠν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "ān")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "υ", :c2_geminated_or_aspirated, "αττυν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "υ", :c2_geminated_or_aspirated, "ατζζιν"), template(:tc1, "u", :tc2_geminated_or_aspirated, "əčhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄υ", :c1, "α", :c2_geminated_or_aspirated, "α"), template("vu", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανου", :c1, "α", :c2_geminated_or_aspirated, "α"), template("vanū", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _pf_subjunctive_second
            [template("в̄ατου", :c1, "α", :c2_geminated_or_aspirated, "α"), template("vatū", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2_geminated_or_aspirated, "α"), template("vē", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ιια"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "ιια"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υυα"), template("nu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υυα"), template("tu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιυ", :c1, "α", :c2_geminated_or_aspirated, "ω", :c3, "υυα"), template("yu", :tc1, "ə", :tc2_geminated_or_aspirated, "ā", :tc3, "uwa")]
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

          def _infinitive
            [template("μα", :c1, "α", :c2_geminated_or_aspirated, "ω"), template("ma", :tc1, "ə", :tc2_geminated_or_aspirated, "ā")]
          end

          def _passive_participle
            [template("μυ", :c1, "α", :c2_geminated_or_aspirated, "α"), template("mu", :tc1, "ə", :tc2_geminated_or_aspirated, "a")]
          end
        end
      end
    end
  end
end
