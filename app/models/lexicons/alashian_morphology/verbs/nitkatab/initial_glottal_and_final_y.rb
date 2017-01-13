require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialGlottalAndFinalY
          include Nitkatab::InitialGlottal

          def subtype
            "C1 = '/H, C3 = Y"
          end

          def _present_first_singular
            [template("ατταηἀ", :c2, "ἠ"), template("'əthaha", :tc2, "ē")]
          end

          def _present_second_singular_masculine
            [template("τατταηἀ", :c2, "ἠ"), template("təthaha", :tc2, "ē")]
          end

          def _present_third_singular_masculine
            [template("ιατταηἀ", :c2, "ἠ"), template("yəthaha", :tc2, "ē")]
          end

          def _preterite_second_singular_masculine
            [template("ναττα", :c2, "ἠτα"), template("nətha", :tc2, "ēta")]
          end

          def _preterite_second_singular_feminine
            [template("ναττα", :c2, "ἠσ̄ε"), template("nətha", :tc2, "ēše")]
          end

          def _preterite_third_singular_masculine
            [template("ναττα", :c2, "ἠ"), template("nətha", :tc2, "ē")]
          end

          def _preterite_first_plural
            [template("ναττα", :c2, "ἠνω"), template("nətha", :tc2, "ēnā")]
          end

          def _preterite_second_plural_masculine
            [template("ναττα", :c2, "ἠτυν"), template("nətha", :tc2, "ētun")]
          end

          def _preterite_second_plural_feminine
            [template("ναττα", :c2, "ἠσ̄ιν"), template("nətha", :tc2, "ēšin")]
          end

          def _imperfect_first_singular
            [template("ναττιη", :c2, "ε"), template("nəthie", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template("ναττιη", :c2, "ετ"), template("nəthie", :tc2, "et")]
          end

          def _imperfect_second_singular_feminine
            [template("ναττιη", :c2, "ες̄"), template("nəthie", :tc2, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template("ναττιη", :c2, "ε"), template("nəthie", :tc2, "e")]
          end

          def _imperfect_first_plural
            [template("ναττιη", :c2, "εν"), template("nəthie", :tc2, "en")]
          end

          def _imperfect_second_plural_masculine
            [template("ναττιη", :c2, "ετυν"), template("nəthie", :tc2, "etun")]
          end

          def _imperfect_second_plural_feminine
            [template("ναττιη", :c2, "εσ̄ιν"), template("nəthie", :tc2, "ešin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωτταηἀ", :c2, "ἠ"), template("vāthaha", :tc2, "ē")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενατταηἀ", :c2, "ἠ"), template("venəthaha", :tc2, "ē")]
          end

          def _pf_subjunctive_second
            [template("в̄ετατταηἀ", :c2, "ἠ"), template("vetəthaha", :tc2, "ē")]
          end

          def _pf_subjunctive_third
            [template("в̄ητταηἀ", :c2, "ἠ"), template("vēthaha", :tc2, "ē")]
          end

          def _volitive_first_singular
            [template("ατταηα", :c2, "ἠνα"), template("'əthaha", :tc2, "ēna")]
          end

          def _volitive_second_singular_masculine
            [template("τατταηα", :c2, "ἠνα"), template("təthaha", :tc2, "ēna")]
          end

          def _volitive_third_singular_masculine
            [template("ιατταηα", :c2, "ἠνα"), template("yəthaha", :tc2, "ēna")]
          end

          def _imperative_masculine_singular
            [template("ατταηἀ", :c2, "ἠ"), template("'əthaha", :tc2, "ē")]
          end

          def _infinitive
            [template("μωτταηἀ", :c2, "ἠ"), template("māthaha", :tc2, "ē")]
          end

          def _active_participle
            [template("ματταηα", :c2, "ει"), template("məthaha", :tc2, "ī")]
          end
        end
      end
    end
  end
end
