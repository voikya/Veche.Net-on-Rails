require_relative '../ennuktab/final_glide'

module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Ennuraya
          include Ennuktab::FinalGlide

          def subtype
            "Irregular"
          end

          def _pf_subjunctive_first_singular
            ["в̄αννυρ̄ἀια", "vannuřaya"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανιννυρ̄ἀια", "vaninnuřaya"]
          end

          def _pf_subjunctive_second
            ["в̄ατιννυρ̄ἀια", "vatinnuřaya"]
          end

          def _pf_subjunctive_third
            ["в̄ηννυρ̄ἀια", "vēnnuřaya"]
          end

          def _passive_participle
            ["μυνναρ̄ἀιοὐ", "munnařayū"]
          end

          private

          def stem(long_vowel: true, lenition: nil)
            v = long_vowel ? "ω" : "α"

            template("ννυ", :c1, "α", :c2, v, :c3)
          end

          def stem_transliterated(long_vowel: true, lenition: nil)
            v = long_vowel ? "ā" : "a"

            template("nnu", :tc1, "a", :tc2, v, :tc3)
          end

          def imperfect_stem(lenition: false)
            template("ννυ", :c1, "α", :c2, "υω", :c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            template("nnu", :tc1, "a", :tc2, "uo", :tc3)
          end
        end
      end
    end
  end
end
