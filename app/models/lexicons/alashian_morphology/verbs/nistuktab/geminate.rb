require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module Geminate
          include Nistuktab::Regular

          def subtype
            "Geminated Root"
          end

          def _present_first_singular
            [template("ωστυ", :c1, "α", :c2), template("'āstu", :tc1, "a", :tc2)]
          end

          def _present_second_singular_masculine
            [template("τωστυ", :c1, "α", :c2), template("tāstu", :tc1, "a", :tc2)]
          end

          def _present_third_singular_masculine
            [template("ιωστυ", :c1, "α", :c2), template("yāstu", :tc1, "a", :tc2)]
          end

          def _preterite_second_singular_masculine
            [template("νιστυ", :c1, "α", :c2_lenited, "τα"), template("nistu", :tc1, "a", :tc2_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template("νιστυ", :c1, "α", :c2_lenited, "σ̄ε"), template("nistu", :tc1, "a", :tc2_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template("νιστυ", :c1, "α", :c2), template("nistu", :tc1, "a", :tc2)]
          end

          def _preterite_first_plural
            [template("νιστυ", :c1, "α", :c2, "νω"), template("nistu", :tc1, "a", :tc2, "nā")]
          end

          def _preterite_second_plural_masculine
            [template("νιστυ", :c1, "α", :c2_lenited, "τυν"), template("nistu", :tc1, "a", :tc2_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template("νιστυ", :c1, "α", :c2_lenited, "σ̄ιν"), template("nistu", :tc1, "a", :tc2_lenited, "šin")]
          end

          def _imperfect_first_singular
            [template("νιστυ", :c1, "υω", :c2_lenited), template("nistu", :tc1, "uo", :tc2_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template("νιστυ", :c1, "υω", :c2_lenited, :c2_lenited, "ατ"), template("nistu", :tc1, "uo", :tc2_lenited, :tc2_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template("νιστυ", :c1, "υω", :c2_lenited, :c2_lenited, "ας̄"), template("nistu", :tc1, "uo", :tc2_lenited, :tc2_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template("νιστυ", :c1, "υω", :c2), template("nistu", :tc1, "uo", :tc2)]
          end

          def _imperfect_first_plural
            [template("νιστυ", :c1, "υω", :c2_lenited, :c2_lenited, "αν"), template("nistu", :tc1, "uo", :tc2_lenited, :tc2_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template("νιστυ", :c1, "υω", :c2_lenited, "τυν"), template("nistu", :tc1, "uo", :tc2_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template("νιστυ", :c1, "υω", :c2_lenited, "σ̄ιν"), template("nistu", :tc1, "uo", :tc2_lenited, "šin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωστυ", :c1, "α", :c2), template("vāstu", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανωστυ", :c1, "α", :c2), template("vanāstu", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_second
            [template("в̄ατωστυ", :c1, "α", :c2), template("vatāstu", :tc1, "a", :tc2)]
          end

          def _pf_subjunctive_third
            [template("в̄ιωστυ", :c1, "α", :c2), template("vyāstu", :tc1, "a", :tc2)]
          end

          def _volitive_first_singular
            ["ω" + stem + "αννα", "'ā" + stem_transliterated + "anna"]
          end

          def _volitive_second_singular_masculine
            ["τω" + stem + "αννα", "tā" + stem_transliterated + "anna"]
          end

          def _volitive_third_singular_masculine
            ["ιω" + stem + "αννα", "yā" + stem_transliterated + "anna"]
          end

          def _infinitive
            [template("μωστυ", :c1, "α", :c2), template("māstu", :tc1, "a", :tc2)]
          end

          def _passive_participle
            [template("μουστα", :c1, "α", :c2), template("mūsta", :tc1, "a", :tc2)]
          end

          private

          def stem(lenition: nil, long_vowel: nil)
            template("στυ", :c1, "α", :c2, :c2)
          end

          def stem_transliterated(lenition: nil, long_vowel: nil)
            template("stu", :tc1, "a", :tc2, :tc2)
          end

          def imperfect_stem(lenition: nil)
            template("στυ", :c1, "υω", :c2, :c2)
          end

          def imperfect_stem_transliterated(lenition: nil)
            template("stu", :tc1, "uo", :tc2, :tc2)
          end
        end
      end
    end
  end
end
