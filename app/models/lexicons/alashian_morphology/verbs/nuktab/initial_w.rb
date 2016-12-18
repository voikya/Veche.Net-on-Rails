require_relative 'initial_y'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialW
          include Nuktab::InitialY

          def subtype
            "C1 = W"
          end

          def _present_first_singular
            [template("α", :c1, "υ", :c2, "ω", :c3), template("'a", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "υ", :c2, "ω", :c3), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "υ", :c2, "ω", :c3, "ει"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "υ", :c2, "ω", :c3), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "υ", :c2, "ω", :c3, "ει"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, "υ", :c2, "ω", :c3, "ου"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, "υ", :c2, "ω", :c3, "ου"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "υ", :c2, "ω", :c3, "ου"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "υ", :c2, "ω", :c3), template("va", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, "υ", :c2, "ω", :c3), template("vana", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, "υ", :c2, "ω", :c3), template("vata", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "υ", :c2, "ω", :c3), template("vē", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "υ", :c2, "ω", :c3, "α"), template("'a", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", :c1, "υ", :c2, "ω", :c3, "α"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "υ", :c2, "ω", :c3, "ια"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", :c1, "υ", :c2, "ω", :c3, "α"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "υ", :c2, "ω", :c3, "ια"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("ni", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("ti", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, "υ", :c2, "ω", :c3, "υ'α"), template("yi", :tc1, :tc1, "u", :tc2, "ā", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("νι", :c1, "υ", :c2, "ω", :c3), template("ni", :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _infinitive
            [template("μα", :c1, "υ", :c2, "ω", :c3), template("ma", :tc1, :tc1, "u", :tc2, "ā", :tc3)]
          end

          def _passive_participle
            [template("νου", :c2, "ι", :c3), template("nū", :tc2, "i", :tc3)]
          end
        end
      end
    end
  end
end
