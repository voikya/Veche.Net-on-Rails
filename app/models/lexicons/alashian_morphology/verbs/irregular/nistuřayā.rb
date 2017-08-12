require_relative '../nistuktab/regular'

module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Nisturaya
          include Nistuktab::Regular

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["ωστυρ̄αιω", "'āstuřayā"]
          end

          def _present_second_singular_masculine
            ["τωστυρ̄αιω", "tāstuřayā"]
          end

          def _present_third_singular_masculine
            ["ιωστυρ̄αιω", "yāstuřayā"]
          end

          def _preterite_second_singular_masculine
            ["νιστυρ̄αιωτα", "nistuřayāta"]
          end

          def _preterite_second_singular_feminine
            ["νιστυρ̄αιωσ̄ε", "nistuřayāše"]
          end

          def _preterite_third_singular_masculine
            ["νιστυρ̄αιω", "nistuřayā"]
          end

          def _preterite_first_plural
            ["νιστυρ̄αιωνω", "nistuřayānā"]
          end

          def _preterite_second_plural_masculine
            ["νιστυρ̄αιωτυν", "nistuřayātun"]
          end

          def _preterite_second_plural_feminine
            ["νιστυρ̄αιωσ̄ιν", "nistuřayāšin"]
          end

          def _imperfect_first_singular
            ["νιστυρ̄αιυω", "nistuřayuo"]
          end

          def _imperfect_second_singular_masculine
            ["νιστυρ̄αιυωτ", "nistuřayuot"]
          end

          def _imperfect_second_singular_feminine
            ["νιστυρ̄αιυως̄", "nistuřayuoš"]
          end

          def _imperfect_third_singular_masculine
            ["νιστυρ̄αιυω", "nistuřayuo"]
          end

          def _imperfect_first_plural
            ["νιστυρ̄αιυων", "nistuřayuon"]
          end

          def _imperfect_second_plural_masculine
            ["νιστυρ̄αιυωτυν", "nistuřayuotun"]
          end

          def _imperfect_second_plural_feminine
            ["νιστυρ̄αιυωσ̄ιν", "nistuřayuošin"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ωστυρ̄ἀιοὐ", "vāstuřayū"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανωστυρ̄ἀιοὐ", "vanāstuřayū"]
          end

          def _pf_subjunctive_second
            ["в̄ατωστυρ̄ἀιοὐ", "vatāstuřayū"]
          end

          def _pf_subjunctive_third
            ["в̄ιωστυρ̄ἀιοὐ", "vyāstuřayū"]
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

          def _infinitive
            ["μωστυρ̄αιω", "māstuřayā"]
          end

          def _passive_participle
            ["μουσταρ̄ἀιοὐ", "mūstařayū"]
          end

          private

          def stem(lenition: nil, long_vowel: true)
            v = long_vowel ? "ω" : "α"
            "στυρ̄αι" + v + "υ"
          end

          def stem_transliterated(lenition: nil, long_vowel: true)
            tv = long_vowel ? "ā" : "a"
            "stuřay" + tv + "w"
          end

          def imperfect_stem(lenition: nil)
            "στυρ̄αιυωυ"
          end

          def imperfect_stem_transliterated(lenition: nil)
            "stuřayuow"
          end
        end
      end
    end
  end
end
