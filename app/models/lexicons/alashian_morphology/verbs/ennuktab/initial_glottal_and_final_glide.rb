require_relative 'final_glide'

module Morphology
  module Alashian
    module Verbs
      module Ennuktab
        module InitialGlottalAndFinalGlide
          include Ennuktab::FinalGlide

          def subtype
            "C1 = '/H, C3 = Y/W"
          end

          def _pf_subjunctive_first_singular
            [template("в̄αννυηἀ", :c2, "α"), template("vannuha", :tc2, "a")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανιννυηἀ", :c2, "α"), template("vaninnuha", :tc2, "a")]
          end

          def _pf_subjunctive_second
            [template("в̄ατιννυηἀ", :c2, "α"), template("vatinnuha", :tc2, "a")]
          end

          def _pf_subjunctive_third
            [template("в̄ηννυηἀ", :c2, "α"), template("vēnnuha", :tc2, "a")]
          end

          def _passive_participle
            if root.tc3 == "y"
              [template("μυνναηἀ", :c2, "ἠ"), template("munnaha", :tc2, "ē")]
            else
              [template("μυνναηἀ", :c2, "οὐ"), template("munnaha", :tc2, "ū")]
            end
          end

          private

          def stem(long_vowel: true, lenition: nil)
            v = long_vowel ? "ω" : "α"

            template("ννυηα", :c2, v, :c3)
          end

          def stem_transliterated(long_vowel: true, lenition: false)
            v = long_vowel ? "ā" : "a"

            template("nnuha", :tc2, v, :tc3)
          end

          def imperfect_stem(lenition: false)
            template("ννυηα", :c2, "υω", :c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            template("nnuha", :tc2, "uo", :tc3)
          end
        end
      end
    end
  end
end
