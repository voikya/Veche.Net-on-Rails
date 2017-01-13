require_relative 'active'

module Morphology
  module Alashian
    module Verbs
      module European
        module ActiveWithInitialVowel
          include European::Active

          def subtype
            "Active with Initial Vowel"
          end

          def _present_second_singular_masculine
            ["τ’" + stem + "ω", "t" + stem_transliterated[1..-1] + "ā"]
          end

          def _present_second_singular_feminine
            ["τ’" + stem + "ει", "t" + stem_transliterated[1..-1] + "ī"]
          end

          def _present_third_singular_masculine
            ["ι’" + stem + "ω", "y" + stem_transliterated[1..-1] + "ā"]
          end

          def _present_third_singular_feminine
            ["ι’" + stem + "ει", "y" + stem_transliterated[1..-1] + "ī"]
          end

          def _present_first_plural
            ["ν’" + stem + "ου", "n" + stem_transliterated[1..-1] + "ū"]
          end

          def _present_second_plural
            ["τ’" + stem + "ου", "t" + stem_transliterated[1..-1] + "ū"]
          end

          def _present_third_plural
            ["ι’" + stem + "ου", "y" + stem_transliterated[1..-1] + "ū"]
          end

          def _pf_subjunctive_first_plural
            ["в̄αν" + stem + "α", "van" + stem_transliterated[1..-1] + "a"]
          end

          def _pf_subjunctive_second
            ["в̄ατ" + stem + "α", "vat" + stem_transliterated[1..-1] + "a"]
          end

          def _pf_subjunctive_third
            ["в̄αι" + stem + "α", "vay" + stem_transliterated[1..-1] + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τ’" + stem + "α", "t" + stem_transliterated[1..-1] + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            if stem_transliterated[-1] == "y"
              ["τ’" + stem + "'ια", "t" + stem_transliterated[1..-1] + "iya"]
            else
              ["τ’" + stem + "ι'α", "t" + stem_transliterated[1..-1] + "iya"]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            ["ι’" + stem + "α", "y" + stem_transliterated[1..-1] + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            if stem_transliterated[-1] == "y"
              ["ι’" + stem + "'ια", "y" + stem_transliterated[1..-1] + "iya"]
            else
              ["ι’" + stem + "ι'α", "y" + stem_transliterated[1..-1] + "iya"]
            end
          end

          def _impf_subjunctive_first_plural
            ["ν’" + stem + "υ'α", "n" + stem_transliterated[1..-1] + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τ’" + stem + "υ'α", "t" + stem_transliterated[1..-1] + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ι’" + stem + "υ'α", "y" + stem_transliterated[1..-1] + "uwa"]
          end
        end
      end
    end
  end
end
