require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module InitialW
          include Staktab::Regular

          def subtype
            "C1 = W"
          end

          def _present_first_singular
            ["α" + stem(coronis: true), "'a" + stem_transliterated]
          end

          def _present_second_singular_masculine
            ["τι" + stem(coronis: true), "ti" + stem_transliterated]
          end

          def _present_third_singular_masculine
            ["ι" + stem(coronis: true), "yi" + stem_transliterated]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem(coronis: true), "vā" + stem_transliterated]
          end

          def _pf_subjunctive_first_plural
            ["в̄ενι" + stem(coronis: true), "veni" + stem_transliterated]
          end

          def _pf_subjunctive_second
            ["в̄ετι" + stem(coronis: true), "veti" + stem_transliterated]
          end

          def _pf_subjunctive_third
            ["в̄η" + stem(coronis: true), "vē" + stem_transliterated]
          end

          def _volitive_first_singular
            ["α" + stem + "αννα", "'a" + stem_transliterated + "anna"]
          end

          def _volitive_second_singular_masculine
            ["τι" + stem + "αννα", "ti" + stem_transliterated + "anna"]
          end

          def _volitive_third_singular_masculine
            ["ι" + stem + "αννα", "yi" + stem_transliterated + "anna"]
          end

          def _imperative_masculine_singular
            ["ε" + stem(coronis: true), "'e" + stem_transliterated]
          end

          def _precative_masculine_singular
            ["ε" + stem + "να", "'e" + stem_transliterated + "na"]
          end

          def _infinitive
            ["μα" + stem(coronis: true), "ma" + stem_transliterated]
          end

          def _active_participle
            [template("μυστοὐ'", :c2, "ι", :c3), template("mustū", :tc2, "i", :tc3)]
          end

          private

          def stem(lenition: false, coronis: false)
            prefix = coronis ? "στοὐ'" : "στου'"
            c3 = lenition ? :c3_lenited : :c3
            template(prefix, :c2, "α", c3)
          end

          def stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stū", :tc2, "a", tc3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στου'", :c2, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stū", :tc2, "ie", tc3)
          end
        end
      end
    end
  end
end
