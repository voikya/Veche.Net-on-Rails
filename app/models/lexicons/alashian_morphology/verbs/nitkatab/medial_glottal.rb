require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module MedialGlottal
          include Nitkatab::Regular

          def subtype
            "C2 = '/H"
          end

          def _present_first_singular
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_masculine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "ει"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_feminine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "ει"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_first_plural
            prefix = root.initial_aspiratable? ? "nəthə" : "nətha"
            [template("ναττα", :c1_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_second_plural
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_third_plural
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3_lenited), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3_lenited, "ετ"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3_lenited, "ες̄"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3)]
          end

          def _imperfect_third_singular_feminine
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3, "ω"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3_lenited, "εν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3_lenited, "τυν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3_lenited, "σ̄ιν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template("νι", infix, :c1, "ιη'", :c2, "ε", :c3, "ου"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            prefix = root.initial_aspiratable? ? "vāthə" : "vātha"
            [template("в̄ωττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            prefix = root.initial_aspiratable? ? "venəthə" : "venətha"
            [template("в̄εναττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_second
            prefix = root.initial_aspiratable? ? "vetəthə" : "vetətha"
            [template("в̄εταττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_third
            prefix = root.initial_aspiratable? ? "vēthə" : "vētha"
            [template("в̄ηττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3, "α"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "α"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "ια"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "α"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "ια"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            prefix = root.initial_aspiratable? ? "nəthə" : "nətha"
            [template("ναττα", :c1_geminated_or_aspirated, "α", :c3, "υ'α"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "υ'α"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "υ'α"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _imperative_feminine_singular
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3, "ει"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _imperative_plural
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _infinitive
            prefix = root.initial_aspiratable? ? "māthə" : "mātha"
            [template("μωττα", :c1_geminated_or_aspirated, "α", :c3), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3)]
          end

          def _active_participle
            prefix = root.initial_aspiratable? ? "məthə" : "mətha"
            [template("ματτα", :c1_geminated_or_aspirated, "ι", :c3), template(prefix, :tc1_geminated_or_aspirated, "i", :tc3)]
          end
        end
      end
    end
  end
end
