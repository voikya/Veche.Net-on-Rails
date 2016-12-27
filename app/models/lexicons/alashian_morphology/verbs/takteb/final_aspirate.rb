require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module FinalAspirate
          include Takteb::Regular

          def subtype
            "C3 = PH/TH/KH/TSH/ČH"
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, "α", :c3, "ει"), template("ti", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ī")]
            else
              [template("τα", infix, :c1, "α", :c2, "α", :c3, "ει"), template("ta", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ī")]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, "α", :c3, "ει"), template("yi", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ī")]
            else
              [template("ια", infix, :c1, "α", :c2, "α", :c3, "ει"), template("ya", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              [template("νι", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
            else
              [template("να", infix, :c1, "α", :c2, "α", :c3, "ου"), template("na", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ti", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
            else
              [template("τα", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ta", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, "α", :c3, "ου"), template("yi", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
            else
              [template("ια", infix, :c1, "α", :c2, "α", :c3, "ου"), template("ya", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3, "ū")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "αττα"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "ətha")]
            else
              [template("τα", :c1, :c2, "η", :c3, "αττα"), template("ta", :tc1, :tc2, "ē", :tc3, "ətha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "ατζζε"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "əčhe")]
            else
              [template("τα", :c1, :c2, "η", :c3, "ατζζε"), template("ta", :tc1, :tc2, "ē", :tc3, "əčhe")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3_unaspirated, "νω"), template("ta", :tc1_lenited, :tc2, "ē", :tc3_unaspirated, "nā")]
            else
              [template("τα", :c1, :c2, "η", :c3_unaspirated, "νω"), template("ta", :tc1, :tc2, "ē", :tc3_unaspirated, "nā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "αττυν"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "əthun")]
            else
              [template("τα", :c1, :c2, "η", :c3, "αττυν"), template("ta", :tc1, :tc2, "ē", :tc3, "əthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η", :c3, "ατζζιν"), template("ta", :tc1_lenited, :tc2, "ē", :tc3, "əčhin")]
            else
              [template("τα", :c1, :c2, "η", :c3, "ατζζιν"), template("ta", :tc1, :tc2, "ē", :tc3, "əčhin")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3, "αττυν"), template("ta", :tc1_lenited, :tc2, "ie", :tc3, "əthun")]
            else
              [template("τα", :c1, :c2, "ιη", :c3, "αττυν"), template("ta", :tc1, :tc2, "ie", :tc3, "əthun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη", :c3, "ατζζιν"), template("ta", :tc1_lenited, :tc2, "ie", :tc3, "əčhin")]
            else
              [template("τα", :c1, :c2, "ιη", :c3, "ατζζιν"), template("ta", :tc1, :tc2, "ie", :tc3, "əčhin")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, "α", :c2, "α", :c3), template("vā", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, "α", :c2, "α", :c3), template("vəna", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, "α", :c2, "α", :c3), template("vəta", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, "α", :c2, "α", :c3), template("vī", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3)]
          end

          def _volitive_first_singular
            [template("α", infix, :c1, "α", :c2, :v, :c3, "αννα"), template("'a", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "anna")]
          end

          def _volitive_second_singular_masculine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "αννα"), template("ti", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "anna")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "αννα"), template("ta", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "anna")]
            end
          end

          def _volitive_third_singular_masculine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "αννα"), template("yi", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "anna")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "αννα"), template("ya", infix_transliterated, :tc1, "a", :tc2, :tv, :tc3, "anna")]
            end
          end

          def _imperative_feminine_singular
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, "α", :c3, "ει"), template("ti", tc1, :tc2, "ə", :tc3, "ī")]
            else
              [template("τα", c1, :c2, "α", :c3, "ει"), template("ta", tc1, :tc2, "ə", :tc3, "ī")]
            end
          end

          def _imperative_plural
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, "α", :c3, "ου"), template("ti", tc1, :tc2, "ə", :tc3, "ū")]
            else
              [template("τα", c1, :c2, "α", :c3, "ου"), template("ta", tc1, :tc2, "ə", :tc3, "ū")]
            end
          end

          def _active_participle
            [template("μι", infix, :c1, "α", :c2, "α", :c3), template("mi", infix_transliterated, :tc1, "a", :tc2, "ə", :tc3)]
          end
        end
      end
    end
  end
end
