require_relative '../fourth_conjugation/regular'

module Morphology
  module Tunisian
    module Verbs
      module Irregular
        module Uni
          include FourthConjugation::Regular

          def conjugation
            "Irregular"
          end

          def subtype
            "uní"
          end

          def _infinitive_singular
            case weak
              when "un"
                "uní"
              when "nan"
                "naní"
              when "ysn"
                "ysní"
            end
          end

          def _infinitive_plural
            case weak
              when "un"
                "unes"
              when "nan"
                "nanes"
              when "ysn"
                "ysnes"
            end
          end

          def _present_participle_masculine
            case weak
              when "un"
                "unèn"
              when "nan"
                "nanèn"
              when "ysn"
                "ysnèn"
            end
          end

          def _present_participle_feminine
            case weak
              when "un"
                "unène"
              when "nan"
                "nanène"
              when "ysn"
                "ysnène"
            end
          end

          def _present_participle_plural
            case weak
              when "un"
                "uneis"
              when "nan"
                "naneis"
              when "ysn"
                "ysneis"
            end
          end

          def _past_participle_masculine
            case weak
              when "un"
                "unit"
              when "nan"
                "nanit"
              when "ysn"
                "ysnit"
            end
          end

          def _past_participle_feminine
            case weak
              when "un"
                "unite"
              when "nan"
                "nanite"
              when "ysn"
                "ysnite"
            end
          end

          def _past_participle_plural
            case weak
              when "un"
                "units"
              when "nan"
                "nanits"
              when "ysn"
                "ysnits"
            end
          end

          def _present_first_singular
            case weak
              when "un"
                "ví"
              when "nan"
                "naví"
              when "ysn"
                "ysví"
            end
          end

          def _present_second_singular
            case weak
              when "un"
                "veis"
              when "nan"
                "naveis"
              when "ysn"
                "ysveis"
            end
          end

          def _present_third_singular
            case weak
              when "un"
                "vey"
              when "nan"
                "navey"
              when "ysn"
                "ysvey"
            end
          end

          def _present_first_plural
            case weak
              when "un"
                "unims"
              when "nan"
                "nanims"
              when "ysn"
                "ysnims"
            end
          end

          def _present_second_plural
            case weak
              when "un"
                "units"
              when "nan"
                "nanits"
              when "ysn"
                "ysnits"
            end
          end

          def _present_third_plural
            case weak
              when "un"
                "vènió"
              when "nan"
                "navènió"
              when "ysn"
                "ysvènió"
            end
          end

          def _imperfect_first_singular
            case weak
              when "un"
                "vinive"
              when "nan"
                "navinive"
              when "ysn"
                "ysvinive"
            end
          end

          def _imperfect_second_singular
            case weak
              when "un"
                "vinivs"
              when "nan"
                "navinivs"
              when "ysn"
                "ysvinivs"
            end
          end

          def _imperfect_third_singular
            case weak
              when "un"
                "vinive"
              when "nan"
                "navinive"
              when "ysn"
                "ysvinive"
            end
          end

          def _imperfect_first_plural
            case weak
              when "un"
                "vinivams"
              when "nan"
                "navinivams"
              when "ysn"
                "ysvinivams"
            end
          end

          def _imperfect_second_plural
            case weak
              when "un"
                "vinivats"
              when "nan"
                "navinivats"
              when "ysn"
                "ysvinivats"
            end
          end

          def _imperfect_third_plural
            case weak
              when "un"
                "vinivé"
              when "nan"
                "navinivé"
              when "ysn"
                "ysvinivé"
            end
          end

          def _preterite_first_singular
            case weak
              when "un"
                "unís"
              when "nan"
                "nanís"
              when "ysn"
                "ysnís"
            end
          end

          def _preterite_second_singular
            case weak
              when "un"
                "unís"
              when "nan"
                "nanís"
              when "ysn"
                "ysnís"
            end
          end

          def _preterite_third_singular
            case weak
              when "un"
                "unís"
              when "nan"
                "nanís"
              when "ysn"
                "ysnís"
            end
          end

          def _preterite_first_plural
            case weak
              when "un"
                "unírims"
              when "nan"
                "nanírims"
              when "ysn"
                "ysnírims"
            end
          end

          def _preterite_second_plural
            case weak
              when "un"
                "unírisç"
              when "nan"
                "nanírisç"
              when "ysn"
                "ysnírisç"
            end
          end

          def _preterite_third_plural
            case weak
              when "un"
                "uníré"
              when "nan"
                "naníré"
              when "ysn"
                "ysníré"
            end
          end

          def _subjunctive_first_singular
            case weak
              when "un"
                "ví"
              when "nan"
                "naví"
              when "ysn"
                "ysví"
            end
          end

          def _subjunctive_second_singular
            case weak
              when "un"
                "veis"
              when "nan"
                "naveis"
              when "ysn"
                "ysveis"
            end
          end

          def _subjunctive_third_singular
            case weak
              when "un"
                "ví"
              when "nan"
                "naví"
              when "ysn"
                "ysví"
            end
          end

          def _subjunctive_first_plural
            case weak
              when "un"
                "unams"
              when "nan"
                "nanams"
              when "ysn"
                "ysnams"
            end
          end

          def _subjunctive_second_plural
            case weak
              when "un"
                "unats"
              when "nan"
                "nanats"
              when "ysn"
                "ysnats"
            end
          end

          def _subjunctive_third_plural
            case weak
              when "un"
                "viné"
              when "nan"
                "naviné"
              when "ysn"
                "ysviné"
            end
          end

          def _future_simple_first_singular
            case weak
              when "un"
                "véray"
              when "nan"
                "navéray"
              when "ysn"
                "ysvéray"
            end
          end

          def _future_simple_second_singular
            case weak
              when "un"
                "vérais"
              when "nan"
                "navérais"
              when "ysn"
                "ysvérais"
            end
          end

          def _future_simple_third_singular
            case weak
              when "un"
                "véray"
              when "nan"
                "navéray"
              when "ysn"
                "ysvéray"
            end
          end

          def _future_simple_first_plural
            case weak
              when "un"
                "vérems"
              when "nan"
                "navérems"
              when "ysn"
                "ysvérems"
            end
          end

          def _future_simple_second_plural
            case weak
              when "un"
                "vérets"
              when "nan"
                "navérets"
              when "ysn"
                "ysvérets"
            end
          end

          def _future_simple_third_plural
            case weak
              when "un"
                "véré"
              when "nan"
                "navéré"
              when "ysn"
                "ysvéré"
            end
          end

          def _future_complex_first_singular
            case weak
              when "un"
                "viuc l-" + _infinitive_singular
              when "nan"
                "viuc il " + _infinitive_singular
              when "ysn"
                "viuc l-u" + _infinitive_singular[1..-1]
            end
          end

          def _future_complex_second_singular
            case weak
              when "un"
                "vucs l-" + _infinitive_singular
              when "nan"
                "vucs il " + _infinitive_singular
              when "ysn"
                "vucs l-u" + _infinitive_singular[1..-1]
            end
          end

          def _future_complex_third_singular
            case weak
              when "un"
                "vuc l-" + _infinitive_singular
              when "nan"
                "vuc il " + _infinitive_singular
              when "ysn"
                "vuc l-u" + _infinitive_singular[1..-1]
            end
          end

          def _future_complex_first_plural
            case weak
              when "un"
                "vucms l-" + _infinitive_plural
              when "nan"
                "vucms ls " + _infinitive_plural
              when "ysn"
                "vucms l-u" + _infinitive_plural[1..-1]
            end
          end

          def _future_complex_second_plural
            case weak
              when "un"
                "vucts l-" + _infinitive_plural
              when "nan"
                "vucts ls " + _infinitive_plural
              when "ysn"
                "vucts l-u" + _infinitive_plural[1..-1]
            end
          end

          def _future_complex_third_plural
            case weak
              when "un"
                "vuccé l-" + _infinitive_plural
              when "nan"
                "vuccé ls " + _infinitive_plural
              when "ysn"
                "vuccé l-u" + _infinitive_plural[1..-1]
            end
          end


          def _imperative_second_singular
            case weak
              when "un"
                "ví"
              when "nan"
                "naví"
              when "ysn"
                "ysví"
            end
          end

          def _imperative_second_plural
            case weak
              when "un"
                "vènit, vít"
              when "nan"
                "navènit, navít"
              when "ysn"
                "ysvènit, ysvít"
            end
          end
        end
      end
    end
  end
end
