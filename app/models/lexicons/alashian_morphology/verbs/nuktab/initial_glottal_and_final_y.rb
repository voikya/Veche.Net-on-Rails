require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Nuktab
        module InitialGlottalAndFinalY
          include Nuktab::InitialGlottal

          def subtype
            "C1 = '/H, C3 = Y"
          end

          def _present_first_singular
            [template("αννυ", :c2, "ω"), template("'annu", :tc2, "ā")]
          end

          def _present_second_singular_masculine
            [template("τιννυ", :c2, "ω"), template("tinnu", :tc2, "ā")]
          end

          def _present_third_singular_masculine
            [template("ιννυ", :c2, "ω"), template("yinnu", :tc2, "ā")]
          end

          def _preterite_first_singular
            [template("νυα", :c2, "ητ"), template("nu'a", :tc2, "ēt")]
          end

          def _preterite_second_singular_masculine
            [template("νυα", :c2, "ητα"), template("nu'a", :tc2, "ēta")]
          end

          def _preterite_third_singular_masculine
            [template("νυα", :c2, "η"), template("nu'a", :tc2, "ē")]
          end

          def _preterite_third_singular_feminine
            [template("νυα", :c2, "ω", :c3, "ω"), template("nu'a", :tc2, "ā", :tc3, "ā")]
          end

          def _preterite_first_plural
            [template("νυα", :c2, "ηνω"), template("nu'a", :tc2, "ēnā")]
          end

          def _preterite_second_plural_masculine
            [template("νυα", :c2, "ητυν"), template("nu'a", :tc2, "ētun")]
          end

          def _preterite_second_plural_feminine
            [template("νυα", :c2, "ησ̄ιν"), template("nu'a", :tc2, "ēšin")]
          end

          def _imperfect_first_singular
            [template("νυυα", :c2, "η"), template("nuwa", :tc2, "ē")]
          end

          def _imperfect_second_singular_masculine
            [template("νυυα", :c2, "ητ"), template("nuwa", :tc2, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template("νυυα", :c2, "ης̄"), template("nuwa", :tc2, "ēš")]
          end

          def _imperfect_third_singular_masculine
            [template("νου", :c2, "η"), template("nū", :tc2, "ē")]
          end

          def _imperfect_third_singular_feminine
            [template("νου", :c2, "ω"), template("nū", :tc2, "ā")]
          end

          def _imperfect_first_plural
            [template("νυυα", :c2, "ην"), template("nuwa", :tc2, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template("νυυα", :c2, "ητυν"), template("nuwa", :tc2, "ētun")]
          end

          def _imperfect_second_plural_feminine
            [template("νυυα", :c2, "ησ̄ιν"), template("nuwa", :tc2, "ēšin")]
          end

          def _imperfect_third_plural
            [template("νου", :c2, "ου"), template("nū", :tc2, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄αννυ", :c2, "ω"), template("vannu", :tc2, "ā")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄αναννυ", :c2, "ω"), template("vanannu", :tc2, "ā")]
          end

          def _pf_subjunctive_second
            [template("в̄αταννυ", :c2, "ω"), template("vatannu", :tc2, "ā")]
          end

          def _pf_subjunctive_third
            [template("в̄ηννυ", :c2, "ω"), template("vēnnu", :tc2, "ā")]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["να", "na"]).map(&:join)
          end

          def _imperative_masculine_singular
            [template("νι", :c2, "η"), template("ni", :tc2, "ē")]
          end

          def _infinitive
            [template("μαννυ", :c2, "η"), template("mannu", :tc2, "ē")]
          end

          def _passive_participle
            if root.medial_aspiratable?
              [template("να", :c2_geminated_or_aspirated, "εἰ"), template("nə", :tc2_geminated_or_aspirated, "ī")]
            else
              [template("να", :c2_geminated_or_aspirated, "εἰ"), template("na", :tc2_geminated_or_aspirated, "ī")]
            end
          end
        end
      end
    end
  end
end
