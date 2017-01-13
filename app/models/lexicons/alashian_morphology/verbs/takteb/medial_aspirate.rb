require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module MedialAspirate
          include Takteb::Regular

          def subtype
            "C2 = PH/TH/KH/TSH/ČH"
          end

          def _present_first_singular
            [template("α", infix, :c1, "α", :c2, :v, :c3), template("'a", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3), template("ti", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3)]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3), template("ta", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3)]
            end
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("ti", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("τα", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("ta", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3), template("yi", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3)]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3), template("ya", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3)]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("yi", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ī")]
            else
              [template("ια", infix, :c1, "α", :c2, :short_v, :c3, "ει"), template("ya", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ī")]
            end
          end

          def _present_first_plural
            if root.tv == "ā"
              [template("νι", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ni", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("να", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("na", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _present_second_plural
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ti", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("τα", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ta", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _present_third_plural
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("yi", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ū")]
            else
              [template("ια", infix, :c1, "α", :c2, :short_v, :c3, "ου"), template("ya", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", infix, :c1, "α", :c2, :short_v, :c3), template("vā", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", infix, :c1, "α", :c2, :short_v, :c3), template("vəna", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", infix, :c1, "α", :c2, :short_v, :c3), template("vəta", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", infix, :c1, "α", :c2, :short_v, :c3), template("vī", infix_transliterated, :tc1, "ə", :tc2, :short_tv, :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", infix, :c1, "α", :c2, :v, :c3, "α"), template("'a", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "α"), template("ti", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "a")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "α"), template("ta", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "ια"), template("ti", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "iya")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "ια"), template("ta", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "α"), template("yi", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "a")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "α"), template("ya", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "ια"), template("yi", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "iya")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "ια"), template("ya", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              [template("νι", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ni", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "uwa")]
            else
              [template("να", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("na", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              [template("τι", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ti", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "uwa")]
            else
              [template("τα", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ta", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              [template("ι", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("yi", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "uwa")]
            else
              [template("ια", infix, :c1, "α", :c2, :v, :c3, "υ'α"), template("ya", infix_transliterated, :tc1, "ə", :tc2, :tv, :tc3, "uwa")]
            end
          end

          def _infinitive
            [template("μα", infix, :c1, "α", :c2, "η", :c3), template("ma", infix_transliterated, :tc1, "ə", :tc2, "ē", :tc3)]
          end

          def _active_participle
            [template("μι", infix, :c1, "α", :c2, "ι", :c3), template("mi", infix_transliterated, :tc1, "ə", :tc2, "i", :tc3)]
          end

          private

          def infix
            "τ"
          end

          def infix_transliterated
            "t"
          end
        end
      end
    end
  end
end
