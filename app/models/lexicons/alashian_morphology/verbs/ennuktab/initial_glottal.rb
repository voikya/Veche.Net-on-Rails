require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module InitialGlottal
          include Ennuktab::Regular

          def subtype
            "C1 = '/H"
          end

          def _pf_subjunctive_first_singular
            [template("в̄αννυηἀ", :c2, "α", :c3), template("vannuha", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανιννυηἀ", :c2, "α", :c3), template("vaninnuha", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_second
            [template("в̄ατιννυηἀ", :c2, "α", :c3), template("vatinnuha", :tc2, "a", :tc3)]
          end

          def _pf_subjunctive_third
            [template("в̄ηννυηἀ", :c2, "α", :c3), template("vēnnuha", :tc2, "a", :tc3)]
          end

          def _passive_participle
            [template("μυνναηἀ", :c2, "α", :c3), template("munnaha", :tc2, "a", :tc3)]
          end

          private

          def stem(long_vowel: true, lenition: false)
            v = long_vowel ? "ω" : "α"
            c3 = lenition ? :c3_lenited : :c3

            template("ννυηα", :c2, v, c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ā" : "a"
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnuha", :tc2, v, c3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3

            template("ννυηα", :c2, "υω", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            c3 = lenition ? :tc3_lenited : :tc3

            template("nnuha", :tc2, "uo", c3)
          end
        end
      end
    end
  end
end
