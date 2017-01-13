require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module FinalGlottalStop
          include Katab::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            ["α" + present_stem, "'a" + present_stem_transliterated[0..-2]]
          end

          def _present_second_singular_masculine
            if root.tv == "ā"
              ["τι" + present_stem, "ti" + present_stem_transliterated[0..-2]]
            else
              ["τα" + present_stem, "ta" + present_stem_transliterated[0..-2]]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā"
              ["ι" + present_stem, "yi" + present_stem_transliterated[0..-2]]
            else
              ["ια" + present_stem, "ya" + present_stem_transliterated[0..-2]]
            end
          end

          def _preterite_first_singular
            [template(:c1, "α", :c2, "ωτ"), template(:tc1, "a", :tc2, "āt")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", :c2, "αττα"), template(:tc1, "a", :tc2, "ətha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", :c2, "ατζζε"), template(:tc1, "a", :tc2, "əčhe")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", :c2, "α"), template(:tc1, "a", :tc2, "a")]
          end

          def _preterite_first_plural
            [template(:c1, :c2, "αννω"), template(:tc1, :tc2, "annā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", :c2, "αττυν"), template(:tc1, "a", :tc2, "əthun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", :c2, "ατζζιν"), template(:tc1, "a", :tc2, "əčhin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ιη", :c2, "ε"), template(:tc1, "ie", :tc2, "e")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη", :c2, "ἠτ"), template(:tc1, "ie", :tc2, "ēt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη", :c2, "ἠς̄"), template(:tc1, "ie", :tc2, "ēš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η", :c2, "ε"), template(:tc1, "ē", :tc2, "e")]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη", :c2, "ἠν"), template(:tc1, "ie", :tc2, "ēn")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη", :c2, "αττυν"), template(:tc1, "ie", :tc2, "əthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη", :c2, "ατζζιν"), template(:tc1, "ie", :tc2, "əčhin")]
          end

          def _pf_subjunctive_first_singular
            ["в̄α" + present_stem(long_vowel: false), "va" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανα" + present_stem(long_vowel: false), "vana" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_second
            ["в̄ατα" + present_stem(long_vowel: false), "vata" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _pf_subjunctive_third
            ["в̄η" + present_stem(long_vowel: false), "vē" + present_stem_transliterated(long_vowel: false)[0..-2]]
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              ["τι" + present_stem + "ιια", "ti" + present_stem_transliterated + "iya"]
            else
              ["τα" + present_stem + "ιια", "ta" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              ["ι" + present_stem + "ιια", "yi" + present_stem_transliterated + "iya"]
            else
              ["ια" + present_stem + "ιια", "ya" + present_stem_transliterated + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā"
              ["νι" + present_stem + "υυα", "ni" + present_stem_transliterated + "uwa"]
            else
              ["να" + present_stem + "υυα", "na" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā"
              ["τι" + present_stem + "υυα", "ti" + present_stem_transliterated + "uwa"]
            else
              ["τα" + present_stem + "υυα", "ta" + present_stem_transliterated + "uwa"]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā"
              ["ι" + present_stem + "υυα", "yi" + present_stem_transliterated + "uwa"]
            else
              ["ια" + present_stem + "υυα", "ya" + present_stem_transliterated + "uwa"]
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
            if epenthetic_vowel?
              [template(:c1, "α", :c2, :v), template(:tc1, "a", :tc2, :tv)]
            else
              [template(:c1, :c2, :v), template(:tc1, :tc2, :tv)]
            end
          end

          def _infinitive
            [template(:c1, "α", :c2, "ου"), template(:tc1, "a", :tc2, "ū")]
          end

          def _active_participle
            [template(:c1, "ου", :c2, "ι"), template(:tc1, "ū", :tc2, "i")]
          end

          def _passive_participle
            if root.medial_plosive?
              [template("μα", :c1_lenited, :c2, "ου"), template("ma", :tc1_lenited, :tc2, "ū")]
            else
              [template("μα", :c1, :c2, "ου"), template("ma", :tc1, :tc2, "ū")]
            end
          end

          private

          def present_stem(long_vowel: true)
            c1 = root.medial_plosive? ? :c1_lenited : :c1
            v = long_vowel ? :v : :short_v

            template(c1, :c2, v, :c3, "'")
          end
        end
      end
    end
  end
end
