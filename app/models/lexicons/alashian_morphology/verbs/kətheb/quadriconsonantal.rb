require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module Quadriconsonantal
          include Ketheb::Regular

          def subtype
            "Quadriconsonantal"
          end

          def _present_first_singular
            [template("α", :c1, "α", root.medial_cluster, "α", :c4), template("'a", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _present_second_singular_masculine
            [template("τι", :c1, "α", root.medial_cluster, "α", :c4), template("ti", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "α", root.medial_cluster, "α", :c4, "ει"), template("ti", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4, "ī")]
          end

          def _present_third_singular_masculine
            [template("ι", :c1, "α", root.medial_cluster, "α", :c4), template("yi", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "α", root.medial_cluster, "α", :c4, "ει"), template("yi", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4, "ī")]
          end

          def _present_first_plural
            [template("νι", :c1, "α", root.medial_cluster, "α", :c4, "ου"), template("ni", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _present_second_plural
            [template("τι", :c1, "α", root.medial_cluster, "α", :c4, "ου"), template("ti", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _present_third_plural
            [template("ι", :c1, "α", root.medial_cluster, "α", :c4, "ου"), template("yi", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _preterite_first_singular
            [template(:c1, "α", root.medial_cluster, "η", :c4, "ετ"), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "α", root.medial_cluster, "η", :c4_lenited, "τα"), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "α", root.medial_cluster, "η", :c4_lenited, "σ̄ε"), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "α", root.medial_cluster, "η", :c4), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "ι", root.medial_cluster, "η", :c4, "ω"), template(:tc1, "i", root.medial_cluster_transliterated, "ē", :tc4, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "α", root.medial_cluster, "η", :c4, "νω"), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "α", root.medial_cluster, "η", :c4_lenited, "τυν"), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "α", root.medial_cluster, "η", :c4_lenited, "σ̄ιν"), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "ι", root.medial_cluster, "η", :c4, "ου"), template(:tc1, "i", root.medial_cluster_transliterated, "ē", :tc4, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "ε", root.medial_cluster, "ε", :c4_lenited), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ε", root.medial_cluster, "ε", :c4_lenited, "ετ"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4_lenited, "et")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ε", root.medial_cluster, "ε", :c4_lenited, "ες̄"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4_lenited, "eš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "ε", root.medial_cluster, "ε", :c4), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "ε", root.medial_cluster, "ε", :c4, "ω"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "ε", root.medial_cluster, "ε", :c4_lenited, "εν"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4_lenited, "en")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ε", root.medial_cluster, "ε", :c4_lenited, "τυν"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ε", root.medial_cluster, "ε", :c4_lenited, "σ̄ιν"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "ε", root.medial_cluster, "ε", :c4, "ου"), template(:tc1, "e", root.medial_cluster_transliterated, "e", :tc4, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, "α", root.medial_cluster, "ε", :c4), template("va", :tc1, "a", root.medial_cluster_transliterated, "e", :tc4)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ενει", :c1, "α", root.medial_cluster, "ε", :c4), template("venī", :tc1, "a", root.medial_cluster_transliterated, "e", :tc4)]
          end

          def _pf_subjunctive_second
            [template("в̄ετει", :c1, "α", root.medial_cluster, "ε", :c4), template("vetī", :tc1, "a", root.medial_cluster_transliterated, "e", :tc4)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "α", root.medial_cluster, "ε", :c4), template("vē", :tc1, "a", root.medial_cluster_transliterated, "e", :tc4)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, "α", root.medial_cluster, "ω", :c4, "α"), template("'a", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τι", :c1, "α", root.medial_cluster, "ω", :c4, "α"), template("ti", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "α", root.medial_cluster, "ω", :c4, "ια"), template("ti", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ι", :c1, "α", root.medial_cluster, "ω", :c4, "α"), template("yi", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "α", root.medial_cluster, "ω", :c4, "ια"), template("yi", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νι", :c1, "α", root.medial_cluster, "ω", :c4, "υ'α"), template("ni", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τι", :c1, "α", root.medial_cluster, "ω", :c4, "υ'α"), template("ti", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ι", :c1, "α", root.medial_cluster, "ω", :c4, "υ'α"), template("yi", :tc1, "a", root.medial_cluster_transliterated, "ā", :tc4, "uwa")]
          end

          def _imperative_masculine_singular
            [template(:c1, "α", root.medial_cluster, "η", :c4), template(:tc1, "a", root.medial_cluster_transliterated, "ē", :tc4)]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", root.medial_cluster, "ε", :c4, "ει"), template(:tc1, "a", root.medial_cluster_transliterated, "e", :tc4, "ī")]
          end

          def _imperative_plural
            [template(:c1, "α", root.medial_cluster, "ε", :c4, "ου"), template(:tc1, "a", root.medial_cluster_transliterated, "e", :tc4, "ū")]
          end

          def _infinitive
            [template("μα", :c1, "α", root.medial_cluster, "ου", :c4), template("ma", :tc1, "a", root.medial_cluster_transliterated, "ū", :tc4)]
          end

          def _active_participle
            [template("μυ", :c1, "α", root.medial_cluster, "ι", :c4), template("mu", :tc1, "a", root.medial_cluster_transliterated, "i", :tc4)]
          end
        end
      end
    end
  end
end
