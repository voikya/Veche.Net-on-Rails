require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Kethab
        module Quadriconsonantal
          include Kethab::Regular

          def subtype
            "Quadriconsonantal"
          end

          def _present_first_singular
            [template("υ", :c1, "υ", root.medial_cluster, "ω", :c4), template("'u", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4)]
          end

          def _present_second_singular_masculine
            [template("τυ", :c1, "υ", root.medial_cluster, "ω", :c4), template("tu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4)]
          end

          def _present_second_singular_feminine
            [template("τυ", :c1, "υ", root.medial_cluster, "α", :c4, "ει"), template("tu", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ī")]
          end

          def _present_third_singular_masculine
            [template("ιυ", :c1, "υ", root.medial_cluster, "ω", :c4), template("yu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4)]
          end

          def _present_third_singular_feminine
            [template("ιυ", :c1, "υ", root.medial_cluster, "α", :c4, "ει"), template("yu", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ī")]
          end

          def _present_first_plural
            [template("νυ", :c1, "υ", root.medial_cluster, "α", :c4, "ου"), template("nu", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _present_second_plural
            [template("τυ", :c1, "υ", root.medial_cluster, "α", :c4, "ου"), template("tu", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _present_third_plural
            [template("ιυ", :c1, "υ", root.medial_cluster, "α", :c4, "ου"), template("yu", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _preterite_first_singular
            [template(:c1, "υ", root.medial_cluster, "ω", :c4, "ετ"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "et")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, "υ", root.medial_cluster, "ω", :c4_lenited, "τα"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4_lenited, "ta")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, "υ", root.medial_cluster, "ω", :c4_lenited, "σ̄ε"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4_lenited, "še")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, "υ", root.medial_cluster, "ω", :c4), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4)]
          end

          def _preterite_third_singular_feminine
            [template(:c1, "υ", root.medial_cluster, "ω", :c4, "ω"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "ā")]
          end

          def _preterite_first_plural
            [template(:c1, "υ", root.medial_cluster, "ω", :c4, "νω"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "nā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, "υ", root.medial_cluster, "ω", :c4_lenited, "τυν"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4_lenited, "tun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, "υ", root.medial_cluster, "ω", :c4_lenited, "σ̄ιν"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4_lenited, "šin")]
          end

          def _preterite_third_plural
            [template(:c1, "υ", root.medial_cluster, "ω", :c4, "ου"), template(:tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "ū")]
          end

          def _imperfect_first_singular
            [template(:c1, "υ", root.medial_cluster, "α", :c4_lenited), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4_lenited)]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "υ", root.medial_cluster, "α", :c4_lenited, "ατ"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4_lenited, "at")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "υ", root.medial_cluster, "α", :c4_lenited, "ας̄"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4_lenited, "aš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "υ", root.medial_cluster, "α", :c4), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "υ", root.medial_cluster, "α", :c4, "ω"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ā")]
          end

          def _imperfect_first_plural
            [template(:c1, "υ", root.medial_cluster, "α", :c4_lenited, "αν"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4_lenited, "an")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "υ", root.medial_cluster, "α", :c4_lenited, "τυν"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4_lenited, "tun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "υ", root.medial_cluster, "α", :c4_lenited, "σ̄ιν"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4_lenited, "šin")]
          end

          def _imperfect_third_plural
            [template(:c1, "υ", root.medial_cluster, "α", :c4, "ου"), template(:tc1, "u", root.medial_cluster_transliterated, "a", :tc4, "ū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄υ", :c1, "υ", root.medial_cluster, "α", :c4), template("vu", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανου", :c1, "υ", root.medial_cluster, "α", :c4), template("vanū", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _pf_subjunctive_second
            [template("в̄ατου", :c1, "υ", root.medial_cluster, "α", :c4), template("vatū", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, "υ", root.medial_cluster, "α", :c4), template("vē", :tc1, "u", root.medial_cluster_transliterated, "a", :tc4)]
          end

          def _impf_subjunctive_first_singular
            [template("υ", :c1, "υ", root.medial_cluster, "ω", :c4, "α"), template("'u", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("τυ", :c1, "υ", root.medial_cluster, "ω", :c4, "α"), template("tu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τυ", :c1, "υ", root.medial_cluster, "ω", :c4, "ια"), template("tu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιυ", :c1, "υ", root.medial_cluster, "ω", :c4, "α"), template("yu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιυ", :c1, "υ", root.medial_cluster, "ω", :c4, "ια"), template("yu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("νυ", :c1, "υ", root.medial_cluster, "ω", :c4, "υ'α"), template("nu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("τυ", :c1, "υ", root.medial_cluster, "ω", :c4, "υ'α"), template("tu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιυ", :c1, "υ", root.medial_cluster, "ω", :c4, "υ'α"), template("yu", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4, "uwa")]
          end

          def _infinitive
            [template("μα", :c1, "υ", root.medial_cluster, "ω", :c4), template("ma", :tc1, "u", root.medial_cluster_transliterated, "ā", :tc4)]
          end

          def _passive_participle
            [template("μυ", :c1, "α", root.medial_cluster, "α", :c4), template("mu", :tc1, "a", root.medial_cluster_transliterated, "a", :tc4)]
          end
        end
      end
    end
  end
end
