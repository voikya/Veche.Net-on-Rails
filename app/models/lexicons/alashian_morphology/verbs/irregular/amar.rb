
module Morphology
  module Alashian
    module Verbs
      module Irregular
        module Amar
          def conjugation
            "Active Scale I Verb"
          end

          def subtype
            "Irregular"
          end

          def _present_first_singular
            ["αμωρ", "'amār"]
          end

          def _present_second_singular_masculine
            ["τιμωρ", "timār"]
          end

          def _present_second_singular_feminine
            ["τιμαρει", "timarī"]
          end

          def _present_third_singular_masculine
            ["ιμωρ", "yimār"]
          end

          def _present_third_singular_feminine
            ["ιμαρει", "yimarī"]
          end

          def _present_first_plural
            ["νιμαρου", "nimarū"]
          end

          def _present_second_plural
            ["τιμαρου", "timarū"]
          end

          def _present_third_plural
            ["ιμαρου", "yimarū"]
          end

          def _preterite_first_singular
            ["αμαρετ (μωρετ)", "'amaret (māret)"]
          end

          def _preterite_second_singular_masculine
            ["αμαρτα (μωρτα)", "'amarta (mārta)"]
          end

          def _preterite_second_singular_feminine
            ["αμαρσ̄ε (μωρσ̄ε)", "'amarše (mārše)"]
          end

          def _preterite_third_singular_masculine
            ["αμαρ (μωρ)", "'amar (mār)"]
          end

          def _preterite_third_singular_feminine
            ["αμβρω (μωρω)", "'ambrā (mārā)"]
          end

          def _preterite_first_plural
            ["αμαρνω (μωρνω)", "'amarnā (mārnā)"]
          end

          def _preterite_second_plural_masculine
            ["αμαρτυν (μωρτυν)", "'amartun (mārtun)"]
          end

          def _preterite_second_plural_feminine
            ["αμαρσ̄ιν (μωρσ̄ιν)", "'amaršin (māršin)"]
          end

          def _preterite_third_plural
            ["αμβρου (μωρου)", "'ambrū (mārū)"]
          end

          def _imperfect_first_singular
            ["ιεμερ (μιηρ)", "yemer (mier)"]
          end

          def _imperfect_second_singular_masculine
            ["ιεμερετ (μιηρετ)", "yemeret (mieret)"]
          end

          def _imperfect_second_singular_feminine
            ["ιεμερες̄ (μιηρες̄)", "yemereš (miereš)"]
          end

          def _imperfect_third_singular_masculine
            ["ημερ (μηρ)", "'ēmer (mēr)"]
          end

          def _imperfect_third_singular_feminine
            ["ημβρω (μηρω)", "'ēmbrā (mērā)"]
          end

          def _imperfect_first_plural
            ["ιεμερεν (μιηρεν)", "yemeren (mieren)"]
          end

          def _imperfect_second_plural_masculine
            ["ιεμερτυν (μιηρτυν)", "yemertun (miertun)"]
          end

          def _imperfect_second_plural_feminine
            ["ιεμερσ̄ιν (μιηρσ̄ιν)", "yemeršin (mieršin)"]
          end

          def _imperfect_third_plural
            ["ημβρου (μηρου)", "'ēmbrū (mērū)"]
          end

          def _pf_subjunctive_first_singular
            ["в̄ωμαρ", "vāmar"]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανιμαρ", "vanimar"]
          end

          def _pf_subjunctive_second
            ["в̄ατιμαρ", "vatimar"]
          end

          def _pf_subjunctive_third
            ["в̄ημαρ", "vēmar"]
          end

          def _impf_subjunctive_first_singular
            ["αμωρα", "'amāra"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τιμωρα", "timāra"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τιμωρια", "timāriya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιμωρα", "yimāra"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιμωρια", "yimāriya"]
          end

          def _impf_subjunctive_first_plural
            ["νιμωρυα", "nimāruwa"]
          end

          def _impf_subjunctive_second_plural
            ["τιμωρυα", "timāruwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιμωρυα", "yimāruwa"]
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
            ["μωρ", "mār"]
          end

          def _imperative_feminine_singular
            ["μαρει", "marī"]
          end

          def _imperative_plural
            ["μαρου", "marū"]
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
            ["αμουρ", "'amūr"]
          end

          def _active_participle
            ["ουμιρ", "'ūmir"]
          end

          def _passive_participle
            ["μαμουρ", "mamūr"]
          end
        end
      end
    end
  end
end
