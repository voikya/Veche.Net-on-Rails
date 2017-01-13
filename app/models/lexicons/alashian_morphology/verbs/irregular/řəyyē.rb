module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Rayye
          def conjugation
            "Active Scale II Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αρ̄αιιἠ", "'ařəyyē"]
          end

          def _present_second_singular_masculine
            ["τερ̄αιιἠ", "teřəyyē"]
          end

          def _present_second_singular_feminine
            ["τερ̄αιαυει", "teřəyawī"]
          end

          def _present_third_singular_masculine
            ["ιερ̄αιιἠ", "yeřəyyē"]
          end

          def _present_third_singular_feminine
            ["ιερ̄αιαυει", "yeřəyawī"]
          end

          def _present_first_plural
            ["νερ̄αιαυου", "neřəyawū"]
          end

          def _present_second_plural
            ["τερ̄αιαυου", "teřəyawū"]
          end

          def _present_third_plural
            ["ιερ̄αιαυου", "yeřəyawū"]
          end

          def _preterite_first_singular
            ["ρ̄αιιητ", "řəyyēt"]
          end

          def _preterite_second_singular_masculine
            ["ρ̄αιιητα", "řəyyēta"]
          end

          def _preterite_second_singular_feminine
            ["ρ̄αιιησ̄ε", "řəyyēše"]
          end

          def _preterite_third_singular_masculine
            ["ρ̄αιιη", "řəyyē"]
          end

          def _preterite_third_singular_feminine
            ["ρ̄ιιηυω", "řiyyēwā"]
          end

          def _preterite_first_plural
            ["ρ̄αιιηνω", "řəyyēnā"]
          end

          def _preterite_second_plural_masculine
            ["ρ̄αιιητυν", "řəyyētun"]
          end

          def _preterite_second_plural_feminine
            ["ρ̄αιιησ̄ιν", "řəyyēšin"]
          end

          def _preterite_third_plural
            ["ρ̄ιιηυου", "řiyyēwū"]
          end

          def _imperfect_first_singular
            ["ρ̄εϊιου", "řeyyū"]
          end

          def _imperfect_second_singular_masculine
            ["ρ̄εϊιουτ", "řeyyūt"]
          end

          def _imperfect_second_singular_feminine
            ["ρ̄εϊιους̄", "řeyyūš"]
          end

          def _imperfect_third_singular_masculine
            ["ρ̄εϊιου", "řeyyū"]
          end

          def _imperfect_third_singular_feminine
            ["ρ̄εϊιουω", "řeyyūwā"]
          end

          def _imperfect_first_plural
            ["ρ̄εϊιουν", "řeyyūn"]
          end

          def _imperfect_second_plural_masculine
            ["ρ̄εϊιουτυν", "řeyyūtun"]
          end

          def _imperfect_second_plural_feminine
            ["ρ̄εϊιουσ̄ιν", "řeyyūšin"]
          end

          def _imperfect_third_plural
            ["ρ̄εϊιουου", "řeyyūwū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄αρ̄αιιη", "vařəyyē"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ενειρ̄αιιη", "venīřəyyē"]
          end

          def _pf_subjunctive_second
            ["в̄ετειρ̄αιιη", "vetīřəyyē"]
          end

          def _pf_subjunctive_third
            ["в̄ηρ̄αιιη", "vēřəyyē"]
          end

          def _impf_subjunctive_first_singular
            ["αρ̄αιιωυα", "'ařəyyāwa"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τερ̄αιιωυα", "teřəyyāwa"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τερ̄αιιωυια", "teřəyyāwiya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιερ̄αιιωυα", "yeřəyyāwa"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιερ̄αιιωυια", "yeřəyyāwiya"]
          end

          def _impf_subjunctive_first_plural
            ["νερ̄αιιωυυα", "neřəyyāwuwa"]
          end

          def _impf_subjunctive_second_plural
            ["τερ̄αιιωυυα", "teřəyyāwuwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιερ̄αιιωυυα", "yeřəyyāwuwa"]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["να", "na"]).map { |a| a.join.sub('ἠ', 'η') }
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["να", "na"]).map { |a| a.join.sub('ἠ', 'η') }
          end

          def _volitive_second_singular_feminine
            _present_second_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["να", "na"]).map { |a| a.join.sub('ἠ', 'η') }
          end

          def _volitive_third_singular_feminine
            _present_third_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_first_plural
            _present_first_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_second_plural
            _present_second_plural.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_plural
            _present_third_plural.zip(["να", "na"]).map(&:join)
          end

          def _imperative_masculine_singular
            ["ρ̄αιιη", "řəyyē"]
          end

          def _imperative_feminine_singular
            ["ρ̄αιιευει", "řəyyewī"]
          end

          def _imperative_plural
            ["ρ̄αιιευου", "řəyyewū"]
          end

          def _precative_masculine_singular
            _imperative_masculine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_feminine_singular
            _imperative_feminine_singular.zip(["να", "na"]).map(&:join)
          end

          def _precative_plural
            _imperative_plural.zip(["να", "na"]).map(&:join)
          end

          def _infinitive
            ["μαρ̄αιιου", "mařəyyū"]
          end

          def _active_participle
            ["μυρ̄αιιει", "muřayyī"]
          end
        end
      end
    end
  end
end
