require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module InitialGlottal
          include Nistuktab::Regular

          def subtype
            "C1 = '/H"
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + stem(long_vowel: false, coronis: true), "vā" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανω" + stem(long_vowel: false, coronis: true), "vanā" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατω" + stem(long_vowel: false, coronis: true), "vatā" + stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_third
            ["в̄ιω" + stem(long_vowel: false, coronis: true), "vyā" + stem_transliterated(long_vowel: false)]
          end

          def _passive_participle
            [template("μουσταηἀ", :c2, "α", :c3), template("mūstaha", :tc2, "a", :tc3)]
          end

          private

          def stem(lenition: false, long_vowel: true, coronis: false)
            epenthetic_vowel = coronis ? "ἀ" : "α"
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3
            template("στυη", epenthetic_vowel, :c2, v, c3)
          end

          def stem_transliterated(lenition: false, long_vowel: true)
            tv = long_vowel ? "ā" : "a"
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stuha", :tc2, tv, tc3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στυηα", :c2, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            tc3 = lenition ? :tc3_lenited : :tc3
            template("stuha", :tc2, "uo", tc3)
          end
        end
      end
    end
  end
end
