require_relative '../e_conjugation/velar_stem'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Tenkji
          include EConjugation::VelarStem

          def subtype
            "Irregular"
          end

          def _infinitive
            [stem[0..-2] + "кьи", stem_transliterated[0..-2] + "kji"]
          end

          def _supine
            [checked_stem, checked_stem_transliterated]
          end

          def _past_singular_masculine
            [checked_stem + "ле", checked_stem_transliterated + "le"]
          end

          def _past_singular_feminine
            [checked_stem + "ла", remove_stress(checked_stem_transliterated) + "lá"]
          end

          def _past_singular_neuter
            [checked_stem + "ло", checked_stem_transliterated + "lo"]
          end

          def _past_dual
            [checked_stem + "лѣ", checked_stem_transliterated + "lě"]
          end

          def _past_plural
            [checked_stem + "ли", checked_stem_transliterated + "li"]
          end

          private

          def checked_stem
            stem.sub('тенг', 'тег')
          end

          def checked_stem_transliterated
            stem_transliterated.sub(/t([eé])ng/, 't\1g')
          end
        end
      end
    end
  end
end
