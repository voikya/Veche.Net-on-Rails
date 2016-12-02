require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module FinalH
          include Katab::Regular

          def subtype
            "C3 = H"
          end

          def _present_first_singular
            ["α" + present_stem[0..-2], "'a" + present_stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            ["τι" + present_stem[0..-2], "ti" + present_stem_transliterated[0..-2]]
          end

          def _present_third_singular_masculine
            ["ι" + present_stem[0..-2], "yi" + present_stem_transliterated[0..-2]]
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "ωτ"), template(:tc1, "a", :tc2, "āt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "ωτα"), template(:tc1, "a", :tc2, "āta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "ωσ̄ε"), template(:tc1, "a", :tc2, "āše")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "ω"), template(:tc1, "a", :tc2, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, :c2, "ωνω"), template(:tc1, :tc2, "ānā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "ωτυν"), template(:tc1, "a", :tc2, "ātun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "ωσ̄ιν"), template(:tc1, "a", :tc2, "āšin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ιη", :c2, "η"), template(:tc1, "ie", :tc2, "ē")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη", :c2, "ητ"), template(:tc1, "ie", :tc2, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη", :c2, "ης̄"), template(:tc1, "ie", :tc2, "ēš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η", :c2, "η"), template(:tc1, "ē", :tc2, "ē")]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη", :c2, "ην"), template(:tc1, "ie", :tc2, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη", :c2, "ητυν"), template(:tc1, "ie", :tc2, "ētun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη", :c2, "ησ̄ιν"), template(:tc1, "ie", :tc2, "ēšin")]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + present_stem[0..-2], "va" + present_stem_transliterated[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανα" + present_stem[0..-2], "vana" + present_stem_transliterated[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατα" + present_stem[0..-2], "vata" + present_stem_transliterated[0..-2]]
          end

          def _pf_subjunctive_third
            ["в̄η" + present_stem[0..-2], "vē" + present_stem_transliterated[0..-2]]
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
            if epenthetic_vowel?
              [template(:c1, "α", :c2, :v), template(:tc1, "a", :tc2, :tv)]
            else
              [template(:c1, :c2, :v), template(:tc1, :tc2, :tv)]
            end
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, "ει"), template(:tc1, "a", :tc2, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", :c2, "ου"), template(:tc1, "a", :tc2, "ū")]
          end

          def _infinitive
            [template(:c1, "α", :c2, "ου"), template(:tc1, "a", :tc2, "ū")]
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ἠ"), template(:tc1, "ū", :tc2, "ē")]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μα", :c1_lenited, :c2, "ου"), template("ma", :tc1_lenited, :tc2, "ū")]
            else
              [template("μα", :c1, :c2, "ου"), template("ma", :tc1, :tc2, "ū")]
            end
          end
        end
      end
    end
  end
end
