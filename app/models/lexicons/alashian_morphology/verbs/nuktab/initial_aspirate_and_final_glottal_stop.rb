require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialAspirateAndFinalGlottalStop
          include Nuktab::InitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = '"
          end

          def _present_first_singular
            [template("α", :c1, "υ", :c2, "ω"), template("'ə", :tc1, "u", :tc2, "ā")]
          end

          def _present_second_singular_masculine
            [template("τα", :c1, "υ", :c2, "ω"), template("tə", :tc1, "u", :tc2, "ā")]
          end

          def _present_third_singular_masculine
            [template("ια", :c1, "υ", :c2, "ω"), template("yə", :tc1, "u", :tc2, "ā")]
          end

          def _preterite_first_singular
            [template("να", :c1, :c2, "ωτ"), template("nə", :tc1, :tc2, "āt")]
          end

          def _preterite_second_singular_masculine
            [template("να", :c1, :c2, "ωττα"), template("nə", :tc1, :tc2, "ātha")]
          end

          def _preterite_second_singular_feminine
            [template("να", :c1, :c2, "ωτζζε"), template("nə", :tc1, :tc2, "āčhe")]
          end

          def _preterite_third_singular_masculine
            [template("να", :c1, :c2, "ω"), template("nə", :tc1, :tc2, "ā")]
          end

          def _preterite_third_singular_feminine
            [template("να", :c1, :c2, "ω", :c3, "ω"), template("nə", :tc1, :tc2, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("να", :c1, :c2, "ωννω"), template("nə", :tc1, :tc2, "ānnā")]
          end

          def _preterite_second_plural_masculine
            [template("να", :c1, :c2, "ωττυν"), template("nə", :tc1, :tc2, "āthun")]
          end

          def _preterite_second_plural_feminine
            [template("να", :c1, :c2, "ωτζζιν"), template("nə", :tc1, :tc2, "āčhin")]
          end

          def _preterite_third_plural
            [template("να", :c1, :c2, "ω", :c3, "ου"), template("nə", :tc1, :tc2, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("να", :c1, "υω", :c2, "α"), template("nə", :tc1, "uo", :tc2, "a")]
          end

          def _imperfect_second_singular_masculine
            [template("να", :c1, "υω", :c2, "ὠτ"), template("nə", :tc1, "uo", :tc2, "āt")]
          end

          def _imperfect_second_singular_feminine
            [template("να", :c1, "υω", :c2, "ὠς̄"), template("nə", :tc1, "uo", :tc2, "āš")]
          end

          def _imperfect_third_singular_masculine
            [template("να", :c1, "ου", :c2, "α"), template("nə", :tc1, "ū", :tc2, "a")]
          end

          def _imperfect_first_plural
            [template("να", :c1, "υω", :c2, "ὠν"), template("nə", :tc1, "uo", :tc2, "ān")]
          end

          def _imperfect_second_plural_masculine
            [template("να", :c1, "υω", :c2, "αττυν"), template("nə", :tc1, "uo", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("να", :c1, "υω", :c2, "ατζζιν"), template("nə", :tc1, "uo", :tc2, "əčhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "υ", :c2, "ω"), template("və", :tc1, "u", :tc2, "ā")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, "υ", :c2, "ω"), template("vanə", :tc1, "u", :tc2, "ā")]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, "υ", :c2, "ω"), template("vatə", :tc1, "u", :tc2, "ā")]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "υ", :c2, "ω"), template("vē", :tc1, "u", :tc2, "ā")]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "υ", :c2, "ω", :c3, "'α"), template("'ə", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τα", :c1, "υ", :c2, "ω", :c3, "'α"), template("tə", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τα", :c1, :c1, "υ", :c2, "ω", :c3, "ιια"), template("tə", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ια", :c1, "υ", :c2, "ω", :c3, "'α"), template("yə", :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ια", :c1, :c1, "υ", :c2, "ω", :c3, "ιια"), template("yə", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("να", :c1, :c1, "υ", :c2, "ω", :c3, "υυα"), template("nə", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τα", :c1, :c1, "υ", :c2, "ω", :c3, "υυα"), template("tə", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ια", :c1, :c1, "υ", :c2, "ω", :c3, "υυα"), template("yə", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
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
            [template("να", :c1, "υ", :c2, "ω"), template("nə", :tc1, "u", :tc2, "ā")]
          end

          def _infinitive
            [template("μα", :c1, "υ", :c2, "ω"), template("mə", :tc1, "u", :tc2, "ā")]
          end

          def _passive_participle
            [template("να", :c1, :c2, "ι"), template("nə", :tc1, :tc2, "i")]
          end
        end
      end
    end
  end
end
