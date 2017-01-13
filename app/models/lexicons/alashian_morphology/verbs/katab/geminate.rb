require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module Geminate
          include Katab::Regular

          def subtype
            "Geminated Root"
          end

          def _present_first_singular
            [template("α", :c1, "ω", :c2), template("'a", :tc1, "ā", :tc2)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "ω", :c2), template("ti", :tc1, "ā", :tc2)]
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "α", :c2, :c2, "ει"), template("ti", :tc1, "a", :tc2, :tc2, "ī")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "ω", :c2), template("yi", :tc1, "ā", :tc2)]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "α", :c2, :c2, "ει"), template("yi", :tc1, "a", :tc2, :tc2, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, "α", :c2, :c2, "ου"), template("ni", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, "α", :c2, :c2, "ου"), template("ti", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "α", :c2, :c2, "ου"), template("yi", :tc1, "a", :tc2, :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", :c2), template("va", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, "α", :c2), template("vana", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, "α", :c2), template("vata", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", :c2), template("vē", :tc1, "a", :tc2)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "α", :c2, :c2, "α"), template("'a", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", :c1, "α", :c2, :c2, "α"), template("ti", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "α", :c2, :c2, "ι'α"), template("ti", :tc1, "a", :tc2, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", :c1, "α", :c2, :c2, "α"), template("yi", :tc1, "a", :tc2, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "α", :c2, :c2, "ι'α"), template("yi", :tc1, "a", :tc2, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, "α", :c2, :c2, "υ'α"), template("ni", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, "α", :c2, :c2, "υ'α"), template("ti", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, "α", :c2, :c2, "υ'α"), template("yi", :tc1, "a", :tc2, :tc2, "uwa")]
          end

          def _volitive_first_singular
            [template("α", :c1, "α", :c2, :c2, "αννα"), template("'a", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _volitive_second_singular_masculine
            [template("τι", :c1, "α", :c2, :c2, "αννα"), template("ti", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _volitive_third_singular_masculine
            [template("ι", :c1, "α", :c2, :c2, "αννα"), template("yi", :tc1, "a", :tc2, :tc2, "anna")]
          end

          def _imperative_masculine_singular
            if epenthetic_vowel?
              [template(:c1, "α", :c2, "ω", :c2), template(:tc1, "a", :tc2, "ā", :tc2)]
            else
              [template(:c1, :c2, "ω", :c2), template(:tc1, :tc2, "ā", :tc2)]
            end
          end

          def _imperative_feminine_singular
            [template(:c1, "ω", :c2, :c2, "ει"), template(:tc1, "ā", :tc2, :tc2, "ī")]
          end

          def _imperative_plural
            [template(:c1, "ω", :c2, :c2, "ου"), template(:tc1, "ā", :tc2, :tc2, "ū")]
          end

          def _infinitive
            [template(:c1, "ω", :c2), template(:tc1, "ā", :tc2)]
          end
        end
      end
    end
  end
end
