require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module FinalGlottalStop
          include Staktab::Regular

          def subtype
            "C3 = '"
          end

          def _present_first_singular
            if root.medial_plosive?
              [template("αστα", :c1_lenited, :c2, "α"), template("'asta", :tc1_lenited, :tc2, "a")]
            else
              [template("αστα", :c1, :c2, "α"), template("'asta", :tc1, :tc2, "a")]
            end
          end

          def _present_second_singular_masculine
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "α"), template("tista", :tc1_lenited, :tc2, "a")]
            else
              [template("τιστα", :c1, :c2, "α"), template("tista", :tc1, :tc2, "a")]
            end
          end

          def _present_third_singular_masculine
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "α"), template("yista", :tc1_lenited, :tc2, "a")]
            else
              [template("ιστα", :c1, :c2, "α"), template("yista", :tc1, :tc2, "a")]
            end
          end

          def _preterite_first_singular
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ὠτ"), template("sta", :tc1_lenited, :tc2, "āt")]
            else
              [template("στα", :c1, :c2, "ὠτ"), template("sta", :tc1, :tc2, "āt")]
            end
          end

          def _preterite_second_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "αττα"), template("sta", :tc1_lenited, :tc2, "ətha")]
            else
              [template("στα", :c1, :c2, "αττα"), template("sta", :tc1, :tc2, "ətha")]
            end
          end

          def _preterite_second_singular_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ατζζε"), template("sta", :tc1_lenited, :tc2, "əčhe")]
            else
              [template("στα", :c1, :c2, "ατζζε"), template("sta", :tc1, :tc2, "əčhe")]
            end
          end

          def _preterite_third_singular_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "α"), template("sta", :tc1_lenited, :tc2, "a")]
            else
              [template("στα", :c1, :c2, "α"), template("sta", :tc1, :tc2, "a")]
            end
          end

          def _preterite_first_plural
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "αννω"), template("sta", :tc1_lenited, :tc2, "annā")]
            else
              [template("στα", :c1, :c2, "αννω"), template("sta", :tc1, :tc2, "annā")]
            end
          end

          def _preterite_second_plural_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "αττυν"), template("sta", :tc1_lenited, :tc2, "əthun")]
            else
              [template("στα", :c1, :c2, "αττυν"), template("sta", :tc1, :tc2, "əthun")]
            end
          end

          def _preterite_second_plural_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ατζζιν"), template("sta", :tc1_lenited, :tc2, "əčhin")]
            else
              [template("στα", :c1, :c2, "ατζζιν"), template("sta", :tc1, :tc2, "əčhin")]
            end
          end

          def _imperfect_first_singular
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιη"), template("sta", :tc1_lenited, :tc2, "ie")]
            else
              [template("στα", :c1, :c2, "ιη"), template("sta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_second_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιητ"), template("sta", :tc1_lenited, :tc2, "iet")]
            else
              [template("στα", :c1, :c2, "ιητ"), template("sta", :tc1, :tc2, "iet")]
            end
          end

          def _imperfect_second_singular_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιης̄"), template("sta", :tc1_lenited, :tc2, "ieš")]
            else
              [template("στα", :c1, :c2, "ιης̄"), template("sta", :tc1, :tc2, "ieš")]
            end
          end

          def _imperfect_third_singular_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιη"), template("sta", :tc1_lenited, :tc2, "ie")]
            else
              [template("στα", :c1, :c2, "ιη"), template("sta", :tc1, :tc2, "ie")]
            end
          end

          def _imperfect_first_plural
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιην"), template("sta", :tc1_lenited, :tc2, "ien")]
            else
              [template("στα", :c1, :c2, "ιην"), template("sta", :tc1, :tc2, "ien")]
            end
          end

          def _imperfect_second_plural_masculine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιηττυν"), template("sta", :tc1_lenited, :tc2, "iethun")]
            else
              [template("στα", :c1, :c2, "ιηττυν"), template("sta", :tc1, :tc2, "iethun")]
            end
          end

          def _imperfect_second_plural_feminine
            if root.medial_plosive?
              [template("στα", :c1_lenited, :c2, "ιητζζιν"), template("sta", :tc1_lenited, :tc2, "iečhin")]
            else
              [template("στα", :c1, :c2, "ιητζζιν"), template("sta", :tc1, :tc2, "iečhin")]
            end
          end

          def _pf_subjunctive_first_singular
            if root.medial_plosive?
              [template("в̄ωστα", :c1_lenited, :c2, "α"), template("vāsta", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ωστα", :c1, :c2, "α"), template("vāsta", :tc1, :tc2, "a")]
            end
          end

          def _pf_subjunctive_first_plural
            if root.medial_plosive?
              [template("в̄ενιστα", :c1_lenited, :c2, "α"), template("venista", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ενιστα", :c1, :c2, "α"), template("venista", :tc1, :tc2, "a")]
            end
          end

          def _pf_subjunctive_second
            if root.medial_plosive?
              [template("в̄ετιστα", :c1_lenited, :c2, "α"), template("vetista", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ετιστα", :c1, :c2, "α"), template("vetista", :tc1, :tc2, "a")]
            end
          end

          def _pf_subjunctive_third
            if root.medial_plosive?
              [template("в̄ηστα", :c1_lenited, :c2, "α"), template("vēsta", :tc1_lenited, :tc2, "a")]
            else
              [template("в̄ηστα", :c1, :c2, "α"), template("vēsta", :tc1, :tc2, "a")]
            end
          end

          def _impf_subjunctive_first_singular
            if root.medial_plosive?
              [template("αστα", :c1_lenited, :c2, "α'α"), template("'asta", :tc1_lenited, :tc2, "a'a")]
            else
              [template("αστα", :c1, :c2, "α'α"), template("'asta", :tc1, :tc2, "a'a")]
            end
          end

          def _impf_subjunctive_second_singular_masculine
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "α'α"), template("tista", :tc1_lenited, :tc2, "a'a")]
            else
              [template("τιστα", :c1, :c2, "α'α"), template("tista", :tc1, :tc2, "a'a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "α'ιια"), template("tista", :tc1_lenited, :tc2, "a'iya")]
            else
              [template("τιστα", :c1, :c2, "α'ιια"), template("tista", :tc1, :tc2, "a'iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "α'α"), template("yista", :tc1_lenited, :tc2, "a'a")]
            else
              [template("ιστα", :c1, :c2, "α'α"), template("yista", :tc1, :tc2, "a'a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "α'ιια"), template("yista", :tc1_lenited, :tc2, "a'iya")]
            else
              [template("ιστα", :c1, :c2, "α'ιια"), template("yista", :tc1, :tc2, "a'iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.medial_plosive?
              [template("νιστα", :c1_lenited, :c2, "α'υ'υα"), template("yista", :tc1_lenited, :tc2, "a'uwa")]
            else
              [template("νιστα", :c1, :c2, "α'υ'υα"), template("yista", :tc1, :tc2, "a'uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "α'υ'υα"), template("tista", :tc1_lenited, :tc2, "a'uwa")]
            else
              [template("τιστα", :c1, :c2, "α'υ'υα"), template("tista", :tc1, :tc2, "a'uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "α'υ'υα"), template("yista", :tc1_lenited, :tc2, "a'uwa")]
            else
              [template("ιστα", :c1, :c2, "α'υ'υα"), template("yista", :tc1, :tc2, "a'uwa")]
            end
          end

          def _volitive_first_singular
            if root.medial_plosive?
              [template("αστα", :c1_lenited, :c2, "ανα"), template("'asta", :tc1_lenited, :tc2, "ana")]
            else
              [template("αστα", :c1, :c2, "ανα"), template("'asta", :tc1, :tc2, "ana")]
            end
          end

          def _volitive_second_singular_masculine
            if root.medial_plosive?
              [template("τιστα", :c1_lenited, :c2, "ανα"), template("tista", :tc1_lenited, :tc2, "ana")]
            else
              [template("τιστα", :c1, :c2, "ανα"), template("tista", :tc1, :tc2, "ana")]
            end
          end

          def _volitive_third_singular_masculine
            if root.medial_plosive?
              [template("ιστα", :c1_lenited, :c2, "ανα"), template("yista", :tc1_lenited, :tc2, "ana")]
            else
              [template("ιστα", :c1, :c2, "ανα"), template("yista", :tc1, :tc2, "ana")]
            end
          end

          def _imperative_masculine_singular
            if root.medial_plosive?
              [template("εστα", :c1_lenited, :c2, "α"), template("'esta", :tc1_lenited, :tc2, "a")]
            else
              [template("εστα", :c1, :c2, "α"), template("'esta", :tc1, :tc2, "a")]
            end
          end

          def _infinitive
            if root.medial_plosive?
              [template("μαστα", :c1_lenited, :c2, "α"), template("masta", :tc1_lenited, :tc2, "a")]
            else
              [template("μαστα", :c1, :c2, "α"), template("masta", :tc1, :tc2, "a")]
            end
          end

          def _active_participle
            if root.medial_plosive?
              [template("μυστα", :c1_lenited, :c2, "ι"), template("musta", :tc1_lenited, :tc2, "i")]
            else
              [template("μυστα", :c1, :c2, "ι"), template("musta", :tc1, :tc2, "i")]
            end
          end
        end
      end
    end
  end
end
