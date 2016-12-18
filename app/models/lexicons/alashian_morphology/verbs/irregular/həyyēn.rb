module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Hayyen
          def conjugation
            "Active Scale II Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αηαιιαν", "'ahəyyan"]
          end

          def _present_second_singular_masculine
            ["τιηαιιαν", "tihəyyan"]
          end

          def _present_second_singular_feminine
            ["τιηανει", "tihənī"]
          end

          def _present_third_singular_masculine
            ["ιηαιιαν", "yihəyyan"]
          end

          def _present_third_singular_feminine
            ["ιηανει", "yihənī"]
          end

          def _present_first_plural
            ["νιηανου", "nihənū"]
          end

          def _present_second_plural
            ["τιηανου", "tihənū"]
          end

          def _present_third_plural
            ["ιηανου", "yihənū"]
          end

          def _preterite_first_singular
            ["ηαιιηνετ", "həyyēnet"]
          end

          def _preterite_second_singular_masculine
            ["ηαιιητα", "həyyētha"]
          end

          def _preterite_second_singular_feminine
            ["ηαιιητζζε", "həyyēčhe"]
          end

          def _preterite_third_singular_masculine
            ["ηαιιην", "həyyēn"]
          end

          def _preterite_third_singular_feminine
            ["ηιιηνω", "hiyēnā"]
          end

          def _preterite_first_plural
            ["ηαιιηννω", "həyyēnnā"]
          end

          def _preterite_second_plural_masculine
            ["ηαιιηττυν", "həyyēthun"]
          end

          def _preterite_second_plural_feminine
            ["ηαιιητζζιν", "həyyēčhin"]
          end

          def _preterite_third_plural
            ["ηιιηνου", "hiyēnū"]
          end

          def _imperfect_first_singular
            ["ηεϊιε", "heyye"]
          end

          def _imperfect_second_singular_masculine
            ["ηεϊιετ", "heyyet"]
          end

          def _imperfect_second_singular_feminine
            ["ηεϊιες̄", "heyyeš"]
          end

          def _imperfect_third_singular_masculine
            ["ηεϊιεν", "heyyen"]
          end

          def _imperfect_third_singular_feminine
            ["ηεϊιενω", "heyyenā"]
          end

          def _imperfect_first_plural
            ["ηεϊιεν", "heyyen"]
          end

          def _imperfect_second_plural_masculine
            ["ηεϊιαττυν", "heyyəthun"]
          end

          def _imperfect_second_plural_feminine
            ["ηεϊιατζζιν", "heyyəčhin"]
          end

          def _imperfect_third_plural
            ["ηεϊιενου", "heyyenū"]
          end

          def _pf_subjunctive_first_singular
            ["в̄αηαιιεν", "vahəyyen"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ενειηαιιεν", "venīhəyyen"]
          end

          def _pf_subjunctive_second
            ["в̄ετειηαιιεν", "vetīhəyyen"]
          end

          def _pf_subjunctive_third
            ["в̄ηηαιιεν", "vēhəyyen"]
          end

          def _impf_subjunctive_first_singular
            ["αηαιιωνα", "'ahəyyāna"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιηαιιωνα", "tihəyyāna"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τιηαιιωνια", "tihəyyāniya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιηαιιωνα", "yihəyyāna"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιηαιιωνια", "yihəyyāniya"]
          end

          def _impf_subjunctive_first_plural
            ["νιηαιιωνυ'α", "nihəyyānuwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιηαιιωνυ'α", "tihəyyānuwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιηαιιωνυ'α", "yihəyyānuwa"]
          end

          def _volitive_first_singular
            _present_first_singular.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_masculine
            _present_second_singular_masculine.zip(["αννα", "anna"]).map(&:join)
          end

          def _volitive_second_singular_feminine
            _present_second_singular_feminine.zip(["να", "na"]).map(&:join)
          end

          def _volitive_third_singular_masculine
            _present_third_singular_masculine.zip(["αννα", "anna"]).map(&:join)
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
            ["ηαιιην", "həyyēn"]
          end

          def _imperative_feminine_singular
            ["ηαιιενει", "həyyenī"]
          end

          def _imperative_plural
            ["ηαιιενου", "həyyenū"]
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
            ["μαηαιιουν", "mahəyyūn"]
          end

          def _active_participle
            ["μυηαιιν", "muhəyyin"]
          end
        end
      end
    end
  end
end
