require_relative '../periphrastic_forms'

module Morphology
  module Novegradian
    module Verbs
      module AthematicConjugation
        module StrongStem
          include Verbs::PeriphrasticForms

          def conjugation
            "Athematic Conjugation"
          end

          def subtype
            "Strong Stem"
          end

          def _infinitive
            [prefix + "буити", prefix_transliterated + "buíti"]
          end

          def _supine
            [prefix + "буит", prefix_transliterated + "buít"]
          end

          def _perfective
            unless perfective?
              [tertiary, tertiary_transliterated]
            end
          end

          def _imperfective
            if perfective?
              [tertiary, tertiary_transliterated]
            end
          end

          def _present_first_singular
            if prefixed?
              [prefix + "бадун", prefix_transliterated + "bádun"]
            else
              ["есм, несм", "iésm, nésm"]
            end
          end

          def _present_first_dual
            if prefixed?
              [prefix + "бадева", prefix_transliterated + "bádeva"]
            else
              ["есуа, несуа", "iésua, nésua"]
            end
          end

          def _present_first_plural
            if prefixed?
              [prefix + "бадем", prefix_transliterated + "bádem"]
            else
              ["есме, несме", "iésme, nésme"]
            end
          end

          def _present_second_singular
            if prefixed?
              [prefix + "бадеш", prefix_transliterated + "bádeś"]
            else
              ["ежи, неси", "ieźí, nési"]
            end
          end

          def _present_second_dual
            if prefixed?
              [prefix + "бадета", prefix_transliterated + "bádeta"]
            else
              ["еста, нета", "iésta, néta"]
            end
          end

          def _present_second_plural
            if prefixed?
              [prefix + "бадете", prefix_transliterated + "bádete"]
            else
              ["есте, несте", "iéste, néste"]
            end
          end

          def _present_third_singular
            if prefixed?
              [prefix + "бадет", prefix_transliterated + "bádet"]
            else
              ["ест, е, нет", "iést, ie, nét"]
            end
          end

          def _present_third_dual
            _present_second_dual
          end

          def _present_third_plural
            if prefixed?
              [prefix + "бадут", prefix_transliterated + "bádut"]
            else
              ["есат, су, несат", "iésat, su, nésat"]
            end
          end

          def _past_singular_masculine
            [prefix + "буиле", prefix_transliterated + "buíle"]
          end

          def _past_singular_feminine
            [prefix + "буила", prefix_transliterated + "builá"]
          end

          def _past_singular_neuter
            [prefix + "буило", prefix_transliterated + "buílo"]
          end

          def _past_dual
            [prefix + "буилѣ", prefix_transliterated + "buílě"]
          end

          def _past_plural
            [prefix + "буили", prefix_transliterated + "buíli"]
          end

          def _imperative_second_singular
            [prefix + "багь", prefix_transliterated + "bágj"]
          end

          def _imperative_second_dual
            [prefix + "багьита", prefix_transliterated + "bagjíta"]
          end

          def _imperative_second_plural
            [prefix + "багьите", prefix_transliterated + "bagjíte"]
          end

          def _imperative_first_dual
            [prefix + "багьиўта", prefix_transliterated + "bagjíwta"]
          end

          def _imperative_first_plural
            [prefix + "багьимте", prefix_transliterated + "bagjímte"]
          end

          def _participle_active_imperfective
            unless perfective?
              [prefix + "сакье", prefix_transliterated + "sákje"]
            end
          end

          def _participle_passive_imperfective
            # No form attested
          end

          def _participle_passive_perfective
            if perfective?
              [prefix + "буите", prefix_transliterated + "buíte"]
            end
          end

          def _adv_participle_imperfective
            unless perfective?
              [prefix + "сукьи", prefix_transliterated + "sukjí"]
            end
          end

          def _adv_participle_perfective
            # Exists for all verbs, perfective or not
            [prefix + "буиве", prefix_transliterated + "buíve"]
          end

          def _future_first_singular
            unless perfective?
              if prefixed?
                ["бадун #{_infinitive[0]}", "bádun #{_infinitive[1]}"]
              else
                ["бадун", "bádun"]
              end
            end
          end

          def _future_first_dual
            unless perfective?
              if prefixed?
                ["бадева #{_infinitive[0]}", "bádeva #{_infinitive[1]}"]
              else
                ["бадева", "bádeva"]
              end
            end
          end

          def _future_first_plural
            unless perfective?
              if prefixed?
                ["бадем #{_infinitive[0]}", "bádem #{_infinitive[1]}"]
              else
                ["бадем", "bádem"]
              end
            end
          end

          def _future_second_singular
            unless perfective?
              if prefixed?
                ["бадеш #{_infinitive[0]}", "bádeś #{_infinitive[1]}"]
              else
                ["бадеш", "bádeś"]
              end
            end
          end

          def _future_second_dual
            unless perfective?
              if prefixed?
                ["бадета #{_infinitive[0]}", "bádeta #{_infinitive[1]}"]
              else
                ["бадета", "bádeta"]
              end
            end
          end

          def _future_second_plural
            unless perfective?
              if prefixed?
                ["бадете #{_infinitive[0]}", "bádete #{_infinitive[1]}"]
              else
                ["бадете", "bádete"]
              end
            end
          end

          def _future_third_singular
            unless perfective?
              if prefixed?
                ["бадет #{_infinitive[0]}", "bádet #{_infinitive[1]}"]
              else
                ["бадет", "bádet"]
              end
            end
          end

          def _future_third_plural
            unless perfective?
              if prefixed?
                ["бадут #{_infinitive[0]}", "bádut #{_infinitive[1]}"]
              else
                ["бадут", "bádut"]
              end
            end
          end

          private

          def prefix
            stem || ""
          end

          def prefix_transliterated
            stem_transliterated or ""
          end

          def prefixed?
            !!stem
          end
        end
      end
    end
  end
end
