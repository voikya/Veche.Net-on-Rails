require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialGlottal
          include Nuktab::Regular

          def subtype
            "C1 = '/H"
          end

          def _present_first_singular
            [template("αννυ", :c2, "ω", :c3), template("'annu", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_masculine
            [template("τιννυ", :c2, "ω", :c3), template("tinnu", :tc2, "ā", :tc3)]
          end

          def _present_second_singular_feminine
            [template("τιννυ", :c2, "ω", :c3, "ει"), template("tinnu", :tc2, "ā", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιννυ", :c2, "ω", :c3), template("yinnu", :tc2, "ā", :tc3)]
          end

          def _present_third_singular_feminine
            [template("ιννυ", :c2, "ω", :c3, "ει"), template("yinnu", :tc2, "ā", :tc3, "ī")]
          end

          def _present_first_plural
            [template("νιννυ", :c2, "ω", :c3, "ου"), template("ninnu", :tc2, "ā", :tc3, "ū")]
          end

          def _present_second_plural
            [template("τιννυ", :c2, "ω", :c3, "ου"), template("tinnu", :tc2, "ā", :tc3, "ū")]
          end

          def _present_third_plural
            [template("ιννυ", :c2, "ω", :c3, "ου"), template("yinnu", :tc2, "ā", :tc3, "ū")]
          end

          def _preterite_first_singular
            [template("νυα", :c2, "ω", :c3, "ετ"), template("nu'a", :tc2, "ā", :tc3, "et")]
          end

          def _preterite_second_singular_masculine
            [template("νυα", :c2, "ω", :c3_lenited, "τα"), template("nu'a", :tc2, "ā", :tc3_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νυα", :c2, "ω", :c3_lenited, "σ̄ε"), template("nu'a", :tc2, "ā", :tc3_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νυα", :c2, "ω", :c3), template("nu'a", :tc2, "ā", :tc3)]
          end

          def _preterite_third_singular_feminine
            [template("νυα", :c2, "ω", :c3, "ω"), template("nu'a", :tc2, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νυα", :c2, "ω", :c3, "νω"), template("nu'a", :tc2, "ā", :tc3, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νυα", :c2, "ω", :c3_lenited, "τυν"), template("nu'a", :tc2, "ā", :tc3_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νυα", :c2, "ω", :c3_lenited, "σ̄ιν"), template("nu'a", :tc2, "ā", :tc3_lenited, "šin")]
          end

          def _preterite_third_plural
            [template("νυα", :c2, "ω", :c3, "ου"), template("nu'a", :tc2, "ā", :tc3, "ū")]
          end

          def _imperfect_first_singular
            [template("νυυα", :c2, "α", :c3_lenited), template("nuwa", :tc2, "a", :tc3_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νυυα", :c2, "α", :c3_lenited, "ατ"), template("nuwa", :tc2, "a", :tc3_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νυυα", :c2, "α", :c3_lenited, "ας̄"), template("nuwa", :tc2, "a", :tc3_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νου", :c2, "α", :c3), template("nū", :tc2, "a", :tc3)]
          end

          def _imperfect_third_singular_feminine
            if root.final_plosive? && !root.geminate_stem?
              [template("νου", :c2_lenited, :c3, "ω"), template("nū", :tc2_lenited, :tc3, "ā")]
            else
              [template("νου", :c2, :c3, "ω"), template("nū", :tc2, :tc3, "ā")]
            end
          end

          def _imperfect_first_plural
            [template("νυυα", :c2, "α", :c3_lenited, "αν"), template("nuwa", :tc2, "a", :tc3_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νυυα", :c2, "α", :c3_lenited, "τυν"), template("nuwa", :tc2, "a", :tc3_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυυα", :c2, "α", :c3_lenited, "σ̄ιν"), template("nuwa", :tc2, "a", :tc3_lenited, "šin")]
          end

          def _imperfect_third_plural
            if root.final_plosive? && !root.geminate_stem?
              [template("νου", :c2_lenited, :c3, "ου"), template("nū", :tc2_lenited, :tc3, "ū")]
            else
              [template("νου", :c2, :c3, "ου"), template("nū", :tc2, :tc3, "ū")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄αννυ", :c2, "ω", :c3), template("vannu", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄αναννυ", :c2, "ω", :c3), template("vanannu", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄αταννυ", :c2, "ω", :c3), template("vatannu", :tc2, "ā", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηννυ", :c2, "ω", :c3), template("vēnnu", :tc2, "ā", :tc3)]
          end

          def _impf_subjunctive_first_singular
            [template("αννυ", :c2, "ω", :c3, "α"), template("'annu", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τιννυ", :c2, "ω", :c3, "α"), template("tinnu", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τιννυ", :c2, "ω", :c3, "ια"), template("tinnu", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιννυ", :c2, "ω", :c3, "α"), template("yinnu", :tc2, "ā", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιννυ", :c2, "ω", :c3, "ια"), template("yinnu", :tc2, "ā", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νιννυ", :c2, "ω", :c3, "υ'α"), template("ninnu", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τιννυ", :c2, "ω", :c3, "υ'α"), template("tinnu", :tc2, "ā", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιννυ", :c2, "ω", :c3, "υ'α"), template("yinnu", :tc2, "ā", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            [template("νι", :c2, "ω", :c3), template("ni", :tc2, "ā", :tc3)]
          end

          def _imperative_feminine_singular
            [template("νι", :c2, "ω", :c3, "ει"), template("ni", :tc2, "ā", :tc3, "ī")]
          end

          def _imperative_plural
            [template("νι", :c2, "ω", :c3, "ου"), template("ni", :tc2, "ā", :tc3, "ū")]
          end

          def _infinitive
            [template("μαννυ", :c2, "ω", :c3), template("mannu", :tc2, "ā", :tc3)]
          end

          def _passive_participle
            if root.medial_aspiratable?
              [template("να", :c2_geminated_or_aspirated, "ι", :c3), template("nə", :tc2_geminated_or_aspirated, "i", :tc3)]
            else
              [template("να", :c2_geminated_or_aspirated, "ι", :c3), template("na", :tc2_geminated_or_aspirated, "i", :tc3)]
            end
          end
        end
      end
    end
  end
end
