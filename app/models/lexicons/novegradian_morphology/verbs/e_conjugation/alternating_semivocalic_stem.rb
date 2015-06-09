require_relative './regular_ending_stressed'

module Morphology
  module Novegradian
    module Verbs
      module EConjugation
        module AlternatingSemivocalicStem
          include EConjugation::RegularEndingStressed

          def conjugation
            "E Conjugation"
          end

          def subtype
            "Alternating Semivocalic Stem"
          end

          def _infinitive
            [desinence + "вати", desinence_transliterated + "váti"]
          end

          def _supine
            [desinence + "ват", desinence_transliterated + "vát"]
          end

          def _present_first_singular
            [desinence + "юн", desinence_transliterated + "iún"]
          end

          def _present_first_dual
            [desinence + "ева", desinence_transliterated + "iéva"]
          end

          def _present_first_plural
            [desinence + "ем", desinence_transliterated + "iém"]
          end

          def _present_second_singular
            [desinence + "еш", desinence_transliterated + "iéś"]
          end

          def _present_second_dual
            [desinence + "ета", desinence_transliterated + "iéta"]
          end

          def _present_second_plural
            [desinence + "ете", desinence_transliterated + "iéte"]
          end

          def _present_third_singular
            [desinence + "ет", desinence_transliterated + "iét"]
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            [desinence + "ют", desinence_transliterated + "iút"]
          end

          def _past_singular_masculine
            [desinence + "вале", desinence_transliterated + "vále"]
          end

          def _past_singular_feminine
            [desinence + "вала", desinence_transliterated + "vála"]
          end

          def _past_singular_neuter
            [desinence + "вало", desinence_transliterated + "válo"]
          end

          def _past_dual
            [desinence + "валѣ", desinence_transliterated + "válě"]
          end

          def _past_plural
            [desinence + "вали", desinence_transliterated + "váli"]
          end

          def _imperative_second_singular
            [desinence + "вай", desinence_transliterated + "vái"]
          end

          def _imperative_second_dual
            [desinence + "вайта", desinence_transliterated + "váita"]
          end

          def _imperative_second_plural
            [desinence + "вайте", desinence_transliterated + "váite"]
          end

          def _imperative_first_dual
            [desinence + "ваута", desinence_transliterated + "váuta"]
          end

          def _imperative_first_plural
            [desinence + "вамте", desinence_transliterated + "vámte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [desinence + "екье", desinence_transliterated + "iékje"]
            end
          end

          def _participle_passive_imperfective
            unless perfective?
              [desinence + "еме", desinence_transliterated + "iéme"]
            end
          end

          def _participle_passive_perfective
            if perfective?
              [desinence + "ване", desinence_transliterated + "váne"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [desinence + "ен", desinence_transliterated + "ién"]
            end
          end

          def _adv_participle_perfective
            if perfective?
              [desinence + "аве", desinence_transliterated + "áve"]
            end
          end
        end
      end
    end
  end
end
