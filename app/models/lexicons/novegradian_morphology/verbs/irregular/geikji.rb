require_relative '../e_conjugation/velar_stem'

module Morphology
  module Novegradian
    module Verbs
      module Irregular
        module Geikji
          include EConjugation::VelarStem

          def subtype
            "Irregular"
          end

          def _past_singular_masculine
            [past_stem + "ле", past_stem_transliterated + "le"]
          end

          def _past_singular_feminine
            [past_stem + "ла", remove_stress(past_stem_transliterated) + "lá"]
          end

          def _past_singular_neuter
            [past_stem + "ло", past_stem_transliterated + "lo"]
          end

          def _past_dual
            [past_stem + "лѣ", past_stem_transliterated + "lě"]
          end

          def _past_plural
            [past_stem + "ли", past_stem_transliterated + "li"]
          end

          private

          def past_stem
            stem.sub("г", "ғ")
          end

          def past_stem_transliterated
            stem_transliterated.sub("g", "ğ")
          end
        end
      end
    end
  end
end
