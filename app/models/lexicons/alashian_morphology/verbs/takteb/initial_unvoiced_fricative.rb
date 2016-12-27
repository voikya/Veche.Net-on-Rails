require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialUnvoicedFricative
          include Takteb::Regular

          def subtype
            "C1 = F/Ṯ/S/Š/X"
          end

          def _present_first_singular
            [template("α", :c1, infix, "α", :c2, :v, :c3), template("'a", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :v, :c3), template("ti", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3)]
            else
              [template("τα", :c1, infix, "α", :c2, :v, :c3), template("ta", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3)]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :short_v, :c3, "ει"), template("ti", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("τα", :c1, infix, "α", :c2, :short_v, :c3, "ει"), template("ta", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :v, :c3), template("yi", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3)]
            else
              [template("ια", :c1, infix, "α", :c2, :v, :c3), template("ya", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3)]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :short_v, :c3, "ει"), template("yi", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("ια", :c1, infix, "α", :c2, :short_v, :c3, "ει"), template("ya", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              [template("νι", :c1, infix, "α", :c2, :short_v, :c3, "ου"), template("ni", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("να", :c1, infix, "α", :c2, :short_v, :c3, "ου"), template("na", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :short_v, :c3, "ου"), template("ti", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("τα", :c1, infix, "α", :c2, :short_v, :c3, "ου"), template("ta", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :short_v, :c3, "ου"), template("yi", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("ια", :c1, infix, "α", :c2, :short_v, :c3, "ου"), template("ya", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", :c1, infix, "α", :c2, :short_v, :c3), template("vā", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, infix, "α", :c2, :short_v, :c3), template("vəna", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, infix, "α", :c2, :short_v, :c3), template("vəta", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", :c1, infix, "α", :c2, :short_v, :c3), template("vī", :tc1, infix_transliterated, "a", :tc2, :short_tv, :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, infix, "α", :c2, :v, :c3, "α"), template("'a", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :v, :c3, "α"), template("ti", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "a")]
            else
              [template("τα", :c1, infix, "α", :c2, :v, :c3, "α"), template("ta", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :v, :c3, "ια"), template("ti", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "iya")]
            else
              [template("τα", :c1, infix, "α", :c2, :v, :c3, "ια"), template("ta", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :v, :c3, "α"), template("yi", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "a")]
            else
              [template("ια", :c1, infix, "α", :c2, :v, :c3, "α"), template("ya", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :v, :c3, "ια"), template("yi", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "iya")]
            else
              [template("ια", :c1, infix, "α", :c2, :v, :c3, "ια"), template("ya", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              [template("νι", :c1, infix, "α", :c2, :v, :c3, "υ'α"), template("ni", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("να", :c1, infix, "α", :c2, :v, :c3, "υ'α"), template("na", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :v, :c3, "υ'α"), template("ti", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("τα", :c1, infix, "α", :c2, :v, :c3, "υ'α"), template("ta", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :v, :c3, "υ'α"), template("yi", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "uwa")]
            else
              [template("ια", :c1, infix, "α", :c2, :v, :c3, "υ'α"), template("ya", :tc1, infix_transliterated, "a", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _infinitive
            [template("μα", :c1, infix, "α", :c2, "η", :c3), template("ma", :tc1, infix_transliterated, "a", :tc2, "ē", :tc3)]
          end

          def _active_participle
            [template("μι", :c1, infix, "α", :c2, "ι", :c3), template("mi", :tc1, infix_transliterated, "a", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
