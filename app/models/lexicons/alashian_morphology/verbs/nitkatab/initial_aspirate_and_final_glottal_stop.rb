require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialAspirateAndFinalGlottalStop
          include Nitkatab::InitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = '"
          end

          def _present_first_singular
            [template("αττα", :c1, :c2, "α"), template("'əthə", :tc1, :tc2, "a")]
          end

          def _present_second_singular_masculine
            [template("ταττα", :c1, :c2, "α"), template("təthə", :tc1, :tc2, "a")]
          end

          def _present_third_singular_masculine
            [template("ιαττα", :c1, :c2, "α"), template("yəthə", :tc1, :tc2, "a")]
          end

          def _preterite_first_singular
            [template("νι", infix, :c1_unaspirated, "α", :c2, "ὠτ"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "āt")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "αττα"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "ατζζε"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "əčhe")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "α"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "a")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1_unaspirated, "α", :c2, "αννω"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "annā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "αττυν"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1_unaspirated, "α", :c2, "ατζζιν"), template("ni", infix_transliterated, :tc1_unaspirated, "a", :tc2, "əčhin")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ετ"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ες̄"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ε"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "e")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "εν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "αττυν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1_unaspirated, "ιη", :c2, "ατζζιν"), template("ni", infix_transliterated, :tc1_unaspirated, "ie", :tc2, "əčhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττα", :c1, :c2, "α"), template("vāthə", :tc1, :tc2, "a")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττα", :c1, :c2, "α"), template("venəthə", :tc1, :tc2, "a")]
          end

          def _pf_subjunctive_second
            [template("в̄εταττα", :c1, :c2, "α"), template("vetəthə", :tc1, :tc2, "a")]
          end

          def _pf_subjunctive_third
            [template("в̄ηττα", :c1, :c2, "α"), template("vēthə", :tc1, :tc2, "a")]
          end

          def _impf_subjunctive_first_singular
            [template("αττα", :c1, :c2, "α", :c3, "'α"), template("'əthə", :tc1, :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττα", :c1, :c2, "α", :c3, "'α"), template("təthə", :tc1, :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c1, :c2, "α", :c3, "ιι'α"), template("təthə", :tc1, :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττα", :c1, :c2, "α", :c3, "'α"), template("yəthə", :tc1, :tc2, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c1, :c2, "α", :c3, "ιι'α"), template("yəthə", :tc1, :tc2, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττα", :c1, :c2, "α", :c3, "υυ'α"), template("nəthə", :tc1, :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττα", :c1, :c2, "α", :c3, "υυ'α"), template("təthə", :tc1, :tc2, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττα", :c1, :c2, "α", :c3, "υυ'α"), template("yəthə", :tc1, :tc2, "a", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("αττα", :c1, :c2, "α"), template("'əthə", :tc1, :tc2, "a")]
          end

          def _infinitive
            [template("μωττα", :c1, :c2, "α"), template("māthə", :tc1, :tc2, "a")]
          end

          def _active_participle
            [template("ματτα", :c1, :c2, "ι"), template("məthə", :tc1, :tc2, "i")]
          end
        end
      end
    end
  end
end
