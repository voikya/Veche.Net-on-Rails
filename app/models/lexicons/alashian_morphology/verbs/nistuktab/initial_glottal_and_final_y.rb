require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Nistuktab
        module InitialGlottalAndFinalY
          include Nistuktab::InitialGlottal

          def subtype
            "C1 = '/H, C3 = Y"
          end

          def _present_first_singular
            [template("ωστυηα", :c2, "ω"), template("'āstuha", :tc2, "ā")]
          end

          def _present_second_singular_masculine
            [template("τωστυηα", :c2, "ω"), template("tāstuha", :tc2, "ā")]
          end

          def _present_third_singular_masculine
            [template("ιωστυηα", :c2, "ω"), template("yāstuha", :tc2, "ā")]
          end

          def _preterite_second_singular_masculine
            [template("νιστυηα", :c2, "ωτα"), template("nistuha", :tc2, "āta")]
          end

          def _preterite_second_singular_feminine
            [template("νιστυηα", :c2, "ωσ̄ε"), template("nistuha", :tc2, "āše")]
          end

          def _preterite_third_singular_masculine
            [template("νιστυηα", :c2, "ω"), template("nistuha", :tc2, "ā")]
          end

          def _preterite_first_plural
            [template("νιστυηα", :c2, "ωνω"), template("nistuha", :tc2, "ānā")]
          end

          def _preterite_second_plural_masculine
            [template("νιστυηα", :c2, "ωτυν"), template("nistuha", :tc2, "ātun")]
          end

          def _preterite_second_plural_feminine
            [template("νιστυηα", :c2, "ωσ̄ιν"), template("nistuha", :tc2, "āšin")]
          end

          def _imperfect_first_singular
            [template("νιστυηα", :c2, "υω"), template("nistuha", :tc2, "uo")]
          end

          def _imperfect_second_singular_masculine
            [template("νιστυηα", :c2, "υωτ"), template("nistuha", :tc2, "uot")]
          end

          def _imperfect_second_singular_feminine
            [template("νιστυηα", :c2, "υως̄"), template("nistuha", :tc2, "uoš")]
          end

          def _imperfect_third_singular_masculine
            [template("νιστυηα", :c2, "υω"), template("nistuha", :tc2, "uo")]
          end

          def _imperfect_first_plural
            [template("νιστυηα", :c2, "υων"), template("nistuha", :tc2, "uon")]
          end

          def _imperfect_second_plural_masculine
            [template("νιστυηα", :c2, "υωτυν"), template("nistuha", :tc2, "uotun")]
          end

          def _imperfect_second_plural_feminine
            [template("νιστυηα", :c2, "υωσ̄ιν"), template("nistuha", :tc2, "uošin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωστυηἀ", :c2, "ἠ"), template("vāstuha", :tc2, "ē")]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανωστυηἀ", :c2, "ἠ"), template("vanāstuha", :tc2, "ē")]
          end

          def _pf_subjunctive_second
            [template("в̄ατωστυηἀ", :c2, "ἠ"), template("vatāstuha", :tc2, "ē")]
          end

          def _pf_subjunctive_third
            [template("в̄ιωστυηἀ", :c2, "ἠ"), template("vyāstuha", :tc2, "ē")]
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
            [template("μωστυηα", :c2, "ω"), template("māstuha", :tc2, "ā")]
          end

          def _passive_participle
            [template("μουσταηἀ", :c2, "ἠ"), template("mūstaha", :tc2, "ē")]
          end
        end
      end
    end
  end
end
