require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module BiconsonantalWithInitialUnvoicedFricative
          include Takteb::Biconsonantal

          def subtype
            "Biconsonantal Root with C1 = F/Ṯ/S/Š/X"
          end

          def _present_first_singular
            [template("α", :c1, infix, :v, :c2), template("'a", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, infix, :v, :c2), template("ti", :tc1, infix_transliterated, :tv, :tc2)]
            else
              [template("τα", :c1, infix, :v, :c2), template("ta", :tc1, infix_transliterated, :tv, :tc2)]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, infix, :v, :c2, "ει"), template("ti", :tc1, infix_transliterated, :tv, :tc2, "ī")]
            else
              [template("τα", :c1, infix, :v, :c2, "ει"), template("ta", :tc1, infix_transliterated, :tv, :tc2, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, infix, :v, :c2), template("yi", :tc1, infix_transliterated, :tv, :tc2)]
            else
              [template("ια", :c1, infix, :v, :c2), template("ya", :tc1, infix_transliterated, :tv, :tc2)]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, infix, :v, :c2, "ει"), template("yi", :tc1, infix_transliterated, :tv, :tc2, "ī")]
            else
              [template("ια", :c1, infix, :v, :c2, "ει"), template("ya", :tc1, infix_transliterated, :tv, :tc2, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, infix, :v, :c2, "ου"), template("ni", :tc1, infix_transliterated, :tv, :tc2, "ū")]
            else
              [template("να", :c1, infix, :v, :c2, "ου"), template("na", :tc1, infix_transliterated, :tv, :tc2, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, infix, :v, :c2, "ου"), template("ti", :tc1, infix_transliterated, :tv, :tc2, "ū")]
            else
              [template("τα", :c1, infix, :v, :c2, "ου"), template("ta", :tc1, infix_transliterated, :tv, :tc2, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, infix, :v, :c2, "ου"), template("yi", :tc1, infix_transliterated, :tv, :tc2, "ū")]
            else
              [template("ια", :c1, infix, :v, :c2, "ου"), template("ya", :tc1, infix_transliterated, :tv, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", :c1, infix, :v, :c2), template("vā", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, infix, :v, :c2), template("vəna", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, infix, :v, :c2), template("vəta", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", :c1, infix, :v, :c2), template("vī", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, infix, :v, :c3, "α"), template("'a", :tc1, infix_transliterated, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, infix, :v, :c3, "α"), template("ti", :tc1, infix_transliterated, :tv, :tc2, "a")]
            else
              [template("τα", :c1, infix, :v, :c3, "α"), template("ta", :tc1, infix_transliterated, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, infix, :v, :c3, "ια"), template("ti", :tc1, infix_transliterated, :tv, :tc2, "iya")]
            else
              [template("τα", :c1, infix, :v, :c3, "ια"), template("ta", :tc1, infix_transliterated, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, infix, :v, :c3, "α"), template("yi", :tc1, infix_transliterated, :tv, :tc2, "a")]
            else
              [template("ια", :c1, infix, :v, :c3, "α"), template("ya", :tc1, infix_transliterated, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, infix, :v, :c3, "ια"), template("yi", :tc1, infix_transliterated, :tv, :tc2, "iya")]
            else
              [template("ια", :c1, infix, :v, :c3, "ια"), template("ya", :tc1, infix_transliterated, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, infix, :v, :c3, "υ'α"), template("ni", :tc1, infix_transliterated, :tv, :tc2, "uwa")]
            else
              [template("να", :c1, infix, :v, :c3, "υ'α"), template("na", :tc1, infix_transliterated, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, infix, :v, :c3, "υ'α"), template("ti", :tc1, infix_transliterated, :tv, :tc2, "uwa")]
            else
              [template("τα", :c1, infix, :v, :c3, "υ'α"), template("ta", :tc1, infix_transliterated, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, infix, :v, :c3, "υ'α"), template("yi", :tc1, infix_transliterated, :tv, :tc2, "uwa")]
            else
              [template("ια", :c1, infix, :v, :c3, "υ'α"), template("ya", :tc1, infix_transliterated, :tv, :tc2, "uwa")]
            end
          end

          def _infinitive
            [template("μα", :c1, infix, :v, :c2), template("ma", :tc1, infix_transliterated, :tv, :tc2)]
          end

          def _active_participle
            [template("μι", :c1, infix, :v, :c2), template("mi", :tc1, infix_transliterated, :tv, :tc2)]
          end
        end
      end
    end
  end
end
