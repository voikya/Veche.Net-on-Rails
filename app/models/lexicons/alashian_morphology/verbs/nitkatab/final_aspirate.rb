require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module FinalAspirate
          include Nitkatab::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3), template("'ətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("αττα", :c1, :c2, "α", :c3), template("'ətha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _present_second_singular_masculine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3), template("tətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("ταττα", :c1, :c2, "α", :c3), template("tətha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _present_second_singular_feminine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "ει"), template("tətha", :tc1_lenited, :tc2, "ə", :tc3, "ī")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "ει"), template("tətha", :tc1, :tc2, "ə", :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3), template("yətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("ιαττα", :c1, :c2, "α", :c3), template("yətha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _present_third_singular_feminine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "ει"), template("yətha", :tc1_lenited, :tc2, "ə", :tc3, "ī")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "ει"), template("yətha", :tc1, :tc2, "ə", :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.medial_plosive?
              [template("ναττα", :c1_lenited, :c2, "α", :c3, "ου"), template("nətha", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("ναττα", :c1, :c2, "α", :c3, "ου"), template("nətha", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "ου"), template("tətha", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "ου"), template("tətha", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "ου"), template("yətha", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "ου"), template("yətha", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _preterite_first_singular
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ετ"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, "α", :c2, :c3, "αττα"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tc3, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, "α", :c2, :c3, "ατζζε"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tc3, "əčhe")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "α", :c3), template("ni", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ω"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1, "α", :c2, "α", :c3_unaspirated, "νω"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3_unaspirated, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, "α", :c2, :c3, "αττυν"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tc3, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, "α", :c2, :c3, "ατζζιν"), template("ni", infix_transliterated, :tc1, "a", :tc2, :tc3, "əčhin")]
          end

          def _preterite_third_plural
            [template("νι", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "ιη", :c2, "α", :c3), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ə", :tc3)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2, :c3, "ετ"), template("ni", infix_transliterated, :tc1, "ie", :tc2, :tc3, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "ιη", :c2, :c3, "ες̄"), template("ni", infix_transliterated, :tc1, "ie", :tc2, :tc3, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2, "α", :c3), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ə", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", infix, :c1, "ιη", :c2, "α", :c3, "ω"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ə", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "ιη", :c2, :c3, "εν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, :tc3, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "ιη", :c2, :c3, "αττυν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, :tc3, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "ιη", :c2, :c3, "ατζζιν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, :tc3, "əčhin")]
          end

          def _imperfect_third_plural
            [template("νι", infix, :c1, "ιη", :c2, "α", :c3, "ου"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ə", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            if root.medial_plosive?
              [template("в̄ωττα", :c1_lenited, :c2, "α", :c3), template("vātha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄ωττα", :c1, :c2, "α", :c3), template("vātha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_plosive?
              [template("в̄εναττα", :c1_lenited, :c2, "α", :c3), template("venətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄εναττα", :c1, :c2, "α", :c3), template("venətha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _pf_subjunctive_second
            if root.medial_plosive?
              [template("в̄εταττα", :c1_lenited, :c2, "α", :c3), template("vetətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄εταττα", :c1, :c2, "α", :c3), template("vetətha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _pf_subjunctive_third
            if root.medial_plosive?
              [template("в̄ηττα", :c1_lenited, :c2, "α", :c3), template("vētha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("в̄ηττα", :c1, :c2, "α", :c3), template("vētha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _impf_subjunctive_first_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3, "α"), template("'ətha", :tc1_lenited, :tc2, "ə", :tc3, "a")]
            else
              [template("αττα", :c1, :c2, "α", :c3, "α"), template("'ətha", :tc1, :tc2, "ə", :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "α"), template("tətha", :tc1_lenited, :tc2, "ə", :tc3, "a")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "α"), template("tətha", :tc1, :tc2, "ə", :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "ια"), template("tətha", :tc1_lenited, :tc2, "ə", :tc3, "iya")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "ια"), template("tətha", :tc1, :tc2, "ə", :tc3, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "α"), template("yətha", :tc1_lenited, :tc2, "ə", :tc3, "a")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "α"), template("yətha", :tc1, :tc2, "ə", :tc3, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "ια"), template("yətha", :tc1_lenited, :tc2, "ə", :tc3, "iya")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "ια"), template("yətha", :tc1, :tc2, "ə", :tc3, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.medial_plosive?
              [template("ναττα", :c1_lenited, :c2, "α", :c3, "υ'α"), template("nətha", :tc1_lenited, :tc2, "ə", :tc3, "uwa")]
            else
              [template("ναττα", :c1, :c2, "α", :c3, "υ'α"), template("nətha", :tc1, :tc2, "ə", :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "υ'α"), template("tətha", :tc1_lenited, :tc2, "ə", :tc3, "uwa")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "υ'α"), template("tətha", :tc1, :tc2, "ə", :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "υ'α"), template("yətha", :tc1_lenited, :tc2, "ə", :tc3, "uwa")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "υ'α"), template("yətha", :tc1, :tc2, "ə", :tc3, "uwa")]
            end
          end

          def _volitive_first_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3, "αννα"), template("'ətha", :tc1_lenited, :tc2, "ə", :tc3, "anna")]
            else
              [template("αττα", :c1, :c2, "α", :c3, "αννα"), template("'ətha", :tc1, :tc2, "ə", :tc3, "anna")]
            end
          end

          def _volitive_second_singular_masculine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α", :c3, "αννα"), template("tətha", :tc1_lenited, :tc2, "ə", :tc3, "anna")]
            else
              [template("ταττα", :c1, :c2, "α", :c3, "αννα"), template("tətha", :tc1, :tc2, "ə", :tc3, "anna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α", :c3, "αννα"), template("yətha", :tc1_lenited, :tc2, "ə", :tc3, "anna")]
            else
              [template("ιαττα", :c1, :c2, "α", :c3, "αννα"), template("yətha", :tc1, :tc2, "ə", :tc3, "anna")]
            end
          end

          def _imperative_masculine_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3), template("'ətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("αττα", :c1, :c2, "α", :c3), template("'ətha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _imperative_feminine_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3, "ει"), template("'ətha", :tc1_lenited, :tc2, "ə", :tc3, "ī")]
            else
              [template("αττα", :c1, :c2, "α", :c3, "ει"), template("'ətha", :tc1, :tc2, "ə", :tc3, "ī")]
            end
          end

          def _imperative_plural
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "α", :c3, "ου"), template("'ətha", :tc1_lenited, :tc2, "ə", :tc3, "ū")]
            else
              [template("αττα", :c1, :c2, "α", :c3, "ου"), template("'ətha", :tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _infinitive
            if root.medial_plosive?
              [template("μωττα", :c1_lenited, :c2, "α", :c3), template("mātha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("μωττα", :c1, :c2, "α", :c3), template("mātha", :tc1, :tc2, "ə", :tc3)]
            end
          end

          def _active_participle
            if root.medial_plosive?
              [template("ματτα", :c1_lenited, :c2, "α", :c3), template("mətha", :tc1_lenited, :tc2, "ə", :tc3)]
            else
              [template("ματτα", :c1, :c2, "α", :c3), template("mətha", :tc1, :tc2, "ə", :tc3)]
            end
          end
        end
      end
    end
  end
end
