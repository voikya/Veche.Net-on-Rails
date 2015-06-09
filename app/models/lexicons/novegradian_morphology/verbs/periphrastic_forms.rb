module Morphology
  module Novegradian
    module Verbs
      module PeriphrasticForms
        def _future_first_singular
          unless perfective?
            ["бадун #{_infinitive[0]}", "bádun #{_infinitive[1]}"]
          end
        end

        def _future_first_dual
          unless perfective?
            ["бадева #{_infinitive[0]}", "bádeva #{_infinitive[1]}"]
          end
        end

        def _future_first_plural
          unless perfective?
            ["бадем #{_infinitive[0]}", "bádem #{_infinitive[1]}"]
          end
        end

        def _future_second_singular
          unless perfective?
            ["бадеш #{_infinitive[0]}", "bádeś #{_infinitive[1]}"]
          end
        end

        def _future_second_dual
          unless perfective?
            ["бадета #{_infinitive[0]}", "bádeta #{_infinitive[1]}"]
          end
        end

        def _future_second_plural
          unless perfective?
            ["бадете #{_infinitive[0]}", "bádete #{_infinitive[1]}"]
          end
        end

        def _future_third_singular
          unless perfective?
            ["бадет #{_infinitive[0]}", "bádet #{_infinitive[1]}"]
          end
        end

        def _future_third_dual
          unless perfective?
            _future_second_dual
          end
        end

        def _future_third_plural
          unless perfective?
            ["бадут #{_infinitive[0]}", "bádut #{_infinitive[1]}"]
          end
        end

        def _future_hyp_first_singular
          ["бадун #{_past_singular_masculine[0]}/а/о", "bádun #{_past_singular_masculine[1]}/a/o"]
        end

        def _future_hyp_first_dual
          ["бадева #{_past_dual[0]}", "bádeva #{_past_dual[1]}"]
        end

        def _future_hyp_first_plural
          ["бадем #{_past_plural[0]}", "bádem #{_past_plural[1]}"]
        end

        def _future_hyp_second_singular
          ["бадеш #{_past_singular_masculine[0]}/а/о", "bádeś #{_past_singular_masculine[1]}/a/o"]
        end

        def _future_hyp_second_dual
          ["бадета #{_past_dual[0]}", "bádeta #{_past_dual[1]}"]
        end

        def _future_hyp_second_plural
          ["бадете #{_past_plural[0]}", "bádete #{_past_plural[1]}"]
        end

        def _future_hyp_third_singular
          ["бадет #{_past_singular_masculine[0]}/а/о", "bádet #{_past_singular_masculine[1]}/a/o"]
        end

        def _future_hyp_third_dual
          _future_hyp_second_dual
        end

        def _future_hyp_third_plural
          ["бадут #{_past_plural[0]}", "bádut #{_past_plural[1]}"]
        end

        def _subjunctive_singular_masculine
          ["#{_past_singular_masculine[0]} би", "#{_past_singular_masculine[1]} bi"]
        end

        def _subjunctive_singular_feminine
          ["#{_past_singular_feminine[0]} би", "#{_past_singular_feminine[1]} bi"]
        end

        def _subjunctive_singular_neuter
          ["#{_past_singular_neuter[0]} би", "#{_past_singular_neuter[1]} bi"]
        end

        def _subjunctive_dual
          ["#{_past_dual[0]} бис", "#{_past_dual[1]} bis"]
        end

        def _subjunctive_plural
          ["#{_past_plural[0]} бу", "#{_past_plural[1]} bu"]
        end
      end
    end
  end
end
