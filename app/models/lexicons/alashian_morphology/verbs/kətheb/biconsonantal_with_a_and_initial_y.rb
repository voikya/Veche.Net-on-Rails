require_relative 'biconsonantal_with_a'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module BiconsonantalWithAAndInitialY
          include Ketheb::MedialGlottal

          def subtype
            "Biconsonantal Root with V = A and C1 = Y"
          end

          def root
            @root ||= alashian.parsed_root.force_triconsonantal!("'")
          end

          def _present_second_singular_masculine
            [template("τ", :c1, "'α'", :c2, "α", :c3), template("ti", :tc1, "ə", :tc2, "a", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τ", :c1, "'α", :c2, "α", :c3, "ει"), template("ti", :tc1, "ə", :tc2, "a", :tc3, "ī")]
          end

          def _present_first_plural
            [template("ν", :c1, "α", :c2, "α", :c3, "ου"), template("ni", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τ", :c1, "α", :c2, "α", :c3, "ου"), template("ti", :tc1, "ə", :tc2, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "η'", :c2, "ε", :c3_lenited), template(:tc1, "ē", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "ετ"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "ες̄"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η'", :c2, "ε", :c3), template(:tc1, "ē", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η'", :c2, "ε", :c3, "ω"), template(:tc1, "ē", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "εν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "τυν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "η'", :c2, "ε", :c3_lenited, "σ̄ιν"), template(:tc1, "ē", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "η'", :c2, "ε", :c3, "ου"), template(:tc1, "ē", :tc2, "e", :tc3, "ū")]
          end



          def _impf_subjunctive_second_singular_masculine
            [template("τ", :c1, "α", :c2, "ω", :c3, "α"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τ", :c1, "α", :c2, "ω", :c3, "ια"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ν", :c1, "α", :c2, "ω", :c3, "υ'α"), template("ni", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τ", :c1, "α", :c2, "ω", :c3, "υ'α"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "uwa")]
          end


        end
      end
    end
  end
end
