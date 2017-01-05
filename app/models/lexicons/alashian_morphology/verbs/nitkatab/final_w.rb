require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module FinalW
          include Nitkatab::Regular

          def subtype
            "C3 = W"
          end

          def _present_first_singular
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "οὐ"), template("'ətha", :tc1_lenited, :tc2, "ū")]
            else
              [template("αττα", :c1, :c2, "οὐ"), template("'ətha", :tc1, :tc2, "ū")]
            end
          end

          def _present_second_singular_masculine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "οὐ"), template("tətha", :tc1_lenited, :tc2, "ū")]
            else
              [template("ταττα", :c1, :c2, "οὐ"), template("tətha", :tc1, :tc2, "ū")]
            end
          end

          def _present_third_singular_masculine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "οὐ"), template("yətha", :tc1_lenited, :tc2, "ū")]
            else
              [template("ιαττα", :c1, :c2, "οὐ"), template("yətha", :tc1, :tc2, "ū")]
            end
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "οὐτα"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ūta")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, "α", :c2, "οὐσ̄ε"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ūše")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1, "α", :c2, "οὐ"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ū")]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1, "α", :c2, "οὐνω"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ūnā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, "α", :c2, "οὐτυν"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ūtun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, "α", :c2, "οὐσ̄ιν"), template("ni", infix_transliterated, :tc1, "a", :tc2, "ūšin")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "ιη", :c2, "ε"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2, "ετ"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "ιη", :c2, "ες̄"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1, "ιη", :c2, "ε"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "e")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "ιη", :c2, "εν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "ιη", :c2, "ετυν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "etun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "ιη", :c2, "εσ̄ιν"), template("ni", infix_transliterated, :tc1, "ie", :tc2, "ešin")]
          end

          def _pf_subjunctive_first_singular
            if root.medial_plosive?
              [template("в̄ωττα", :c1_lenited, :c2, "οὐ"), template("vātha", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄ωττα", :c1, :c2, "οὐ"), template("vātha", :tc1, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_plosive?
              [template("в̄εναττα", :c1_lenited, :c2, "οὐ"), template("venətha", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄εναττα", :c1, :c2, "οὐ"), template("venətha", :tc1, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_second
            if root.medial_plosive?
              [template("в̄εταττα", :c1_lenited, :c2, "οὐ"), template("vetətha", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄εταττα", :c1, :c2, "οὐ"), template("vetətha", :tc1, :tc2, "ū")]
            end
          end

          def _pf_subjunctive_third
            if root.medial_plosive?
              [template("в̄ηττα", :c1_lenited, :c2, "οὐ"), template("vētha", :tc1_lenited, :tc2, "ū")]
            else
              [template("в̄ηττα", :c1, :c2, "οὐ"), template("vētha", :tc1, :tc2, "ū")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_plosive?
              [template("ταττα", :c1_lenited, :c2, "α'", :c3, "ι'α"), template("tətha", :tc1_lenited, :tc2, "a", :tc3, "iya")]
            else
              [template("ταττα", :c1, :c2, "α'", :c3, "ι'α"), template("tətha", :tc1, :tc2, "a", :tc3, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_plosive?
              [template("ιαττα", :c1_lenited, :c2, "α'", :c3, "ι'α"), template("yətha", :tc1_lenited, :tc2, "a", :tc3, "iya")]
            else
              [template("ιαττα", :c1, :c2, "α'", :c3, "ι'α"), template("yətha", :tc1, :tc2, "a", :tc3, "iya")]
            end
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
            if root.medial_plosive?
              [template("αττα", :c1_lenited, :c2, "οὐ"), template("'ətha", :tc1_lenited, :tc2, "ū")]
            else
              [template("αττα", :c1, :c2, "οὐ"), template("'ətha", :tc1, :tc2, "ū")]
            end
          end

          def _infinitive
            if root.medial_plosive?
              [template("μωττα", :c1_lenited, :c2, "οὐ"), template("mātha", :tc1_lenited, :tc2, "ū")]
            else
              [template("μωττα", :c1, :c2, "οὐ"), template("mātha", :tc1, :tc2, "ū")]
            end
          end

          def _active_participle
            if root.medial_plosive?
              [template("ματτα", :c1_lenited, :c2, "ει"), template("mətha", :tc1_lenited, :tc2, "ī")]
            else
              [template("ματτα", :c1, :c2, "ει"), template("mətha", :tc1, :tc2, "ī")]
            end
          end
        end
      end
    end
  end
end
