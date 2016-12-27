require_relative 'initial_unvoiced_fricative'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialUnvoicedFricativeAndFinalGlide
          include Takteb::InitialUnvoicedFricative

          def subtype
            "C1 = F/Ṯ/S/Š/X, C3 = Y/W"
          end

          def _present_first_singular
            [template("α", :c1, infix, "α", :c2, :v), template("'a", :tc1, infix_transliterated, "a", :tc2, :tv)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              [template("τι", :c1, infix, "α", :c2, :v), template("ti", :tc1, infix_transliterated, "a", :tc2, :tv)]
            else
              [template("τα", :c1, infix, "α", :c2, :v), template("ta", :tc1, infix_transliterated, "a", :tc2, :tv)]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              [template("ι", :c1, infix, "α", :c2, :v), template("yi", :tc1, infix_transliterated, "a", :tc2, :tv)]
            else
              [template("ια", :c1, infix, "α", :c2, :v), template("ya", :tc1, infix_transliterated, "a", :tc2, :tv)]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητα"), template("ta", :tc1_lenited, :tc2, "ēta")]
            else
              [template("τα", :c1, :c2, "ητα"), template("ta", :tc1, :tc2, "ēta")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ησ̄ε"), template("ta", :tc1_lenited, :tc2, "ēše")]
            else
              [template("τα", :c1, :c2, "ησ̄ε"), template("ta", :tc1, :tc2, "ēše")]
            end
          end

          def _preterite_third_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "η"), template("ta", :tc1_lenited, :tc2, "ē")]
            else
              [template("τα", :c1, :c2, "η"), template("ta", :tc1, :tc2, "ē")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ηνω"), template("ta", :tc1_lenited, :tc2, "ēnā")]
            else
              [template("τα", :c1, :c2, "ηνω"), template("ta", :tc1, :tc2, "ēnā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ητυν"), template("ta", :tc1_lenited, :tc2, "ētun")]
            else
              [template("τα", :c1, :c2, "ητυν"), template("ta", :tc1, :tc2, "ētun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ησ̄ιν"), template("ta", :tc1_lenited, :tc2, "ēšin")]
            else
              [template("τα", :c1, :c2, "ησ̄ιν"), template("ta", :tc1, :tc2, "ēšin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη"), template("ta", :tc1_lenited, :tc2, "ie")]
            else
              [template("τα", :c1, :c2, "ιη"), template("ta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιη"), template("ta", :tc1_lenited, :tc2, "ie")]
            else
              [template("τα", :c1, :c2, "ιη"), template("ta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιητυν"), template("ta", :tc1_lenited, :tc2, "ietun")]
            else
              [template("τα", :c1, :c2, "ιητυν"), template("ta", :tc1, :tc2, "ietun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("τα", :c1_lenited, :c2, "ιησ̄ιν"), template("ta", :tc1_lenited, :tc2, "iešin")]
            else
              [template("τα", :c1, :c2, "ιησ̄ιν"), template("ta", :tc1, :tc2, "iešin")]
            end
          end

          def _pf_subjunctive_first_singular
            [template("в̄ω", :c1, infix, "α", :c2, :short_v), template("vā", :tc1, infix_transliterated, "a", :tc2, :short_tv)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, infix, "α", :c2, :short_v), template("vəna", :tc1, infix_transliterated, "a", :tc2, :short_tv)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, infix, "α", :c2, :short_v), template("vəta", :tc1, infix_transliterated, "a", :tc2, :short_tv)]
          end

          def _pf_subjunctive_third
            [template("в̄ει", :c1, infix, "α", :c2, :short_v), template("vī", :tc1, infix_transliterated, "a", :tc2, :short_tv)]
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
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            tc1 = root.medial_plosive? ? :tc1_lenited : :tc1
            if root.tv == "ā"
              [template("τι", c1, :c2, :v), template("ti", tc1, :tc2, :tv)]
            else
              [template("τα", c1, :c2, :v), template("ta", tc1, :tc2, :tv)]
            end
          end

          def _infinitive
            [template("μα", :c1, infix, "α", :c2, "η"), template("ma", :tc1, infix_transliterated, "a", :tc2, "ē")]
          end

          def _active_participle
            [template("μι", :c1, infix, "α", :c2, "ι"), template("mi", :tc1, infix_transliterated, "a", :tc2, "i")]
          end
        end
      end
    end
  end
end
