require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module BiconsonantalWithFinalGlottalStop
          include Nitkatab::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = '"
          end

          def _present_first_singular
            [template("αττα", :c1, :v), template("'ətha", :tc1, :tv)]
          end

          def _present_second_singular_masculine
            [template("ταττα", :c1, :v), template("tətha", :tc1, :tv)]
          end

          def _present_third_singular_masculine
            [template("ιαττα", :c1, :v), template("yətha", :tc1, :tv)]
          end

          def _preterite_first_singular
            [template("νι", infix, :c1, :v, "τ"), template("ni", infix_transliterated, :tc1, :tv, "t")]
          end

          def _preterite_second_singular_masculine
            [template("νι", infix, :c1, :v, "ττα"), template("ni", infix_transliterated, :tc1, :tv, "tha")]
          end

          def _preterite_second_singular_feminine
            [template("νι", infix, :c1, :v, "τζζε"), template("ni", infix_transliterated, :tc1, :tv, "čhe")]
          end

          def _preterite_third_singular_masculine
            [template("νι", infix, :c1, :v), template("ni", infix_transliterated, :tc1, :tv)]
          end

          def _preterite_first_plural
            [template("νι", infix, :c1, :v, "ννω"), template("ni", infix_transliterated, :tc1, :tv, "nnā")]
          end

          def _preterite_second_plural_masculine
            [template("νι", infix, :c1, :v, "ττυν"), template("ni", infix_transliterated, :tc1, :tv, "thun")]
          end

          def _preterite_second_plural_feminine
            [template("νι", infix, :c1, :v, "τζζιν"), template("ni", infix_transliterated, :tc1, :tv, "čhin")]
          end

          def _imperfect_first_singular
            [template("νι", infix, :c1, "ιη"), template("ni", infix_transliterated, :tc1, "ie")]
          end

          def _imperfect_second_singular_masculine
            [template("νι", infix, :c1, "ιητ"), template("ni", infix_transliterated, :tc1, "iet")]
          end

          def _imperfect_second_singular_feminine
            [template("νι", infix, :c1, "ιης̄"), template("ni", infix_transliterated, :tc1, "ieš")]
          end

          def _imperfect_third_singular_masculine
            [template("νι", infix, :c1, "ιη"), template("ni", infix_transliterated, :tc1, "ie")]
          end

          def _imperfect_first_plural
            [template("νι", infix, :c1, "ιην"), template("ni", infix_transliterated, :tc1, "ien")]
          end

          def _imperfect_second_plural_masculine
            [template("νι", infix, :c1, "ιηττυν"), template("ni", infix_transliterated, :tc1, "iethun")]
          end

          def _imperfect_second_plural_feminine
            [template("νι", infix, :c1, "ιητζζιν"), template("ni", infix_transliterated, :tc1, "iečhin")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄ωττα", :c1, :v), template("vātha", :tc1, :tv)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄εναττα", :c1, :v), template("venətha", :tc1, :tv)]
          end

          def _pf_subjunctive_second
            [template("в̄εταττα", :c1, :v), template("vetətha", :tc1, :tv)]
          end

          def _pf_subjunctive_third
            [template("в̄ηττα", :c1, :v), template("vētha", :tc1, :tv)]
          end

          def _impf_subjunctive_first_singular
            [template("αττα", :c1, :v, :c2, "'α"), template("'ətha", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            [template("ταττα", :c1, :v, :c2, "'α"), template("tətha", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("ταττα", :c1, :v, :c2, "ιι'α"), template("tətha", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            [template("ιαττα", :c1, :v, :c2, "'α"), template("yətha", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ιαττα", :c1, :v, :c2, "ιι'α"), template("yətha", :tc1, :tv, :tc2, "iya")]
          end

          def _impf_subjunctive_first_plural
            [template("ναττα", :c1, :v, :c2, "υυ'α"), template("nətha", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_second_plural
            [template("ταττα", :c1, :v, :c2, "υυ'α"), template("tətha", :tc1, :tv, :tc2, "uwa")]
          end

          def _impf_subjunctive_third_plural
            [template("ιαττα", :c1, :v, :c2, "υυ'α"), template("yətha", :tc1, :tv, :tc2, "uwa")]
          end

          def _imperative_masculine_singular
            [template("αττα", :c1, :v), template("'ətha", :tc1, :tv)]
          end

          def _infinitive
            [template("μωττα", :c1, :v), template("mātha", :tc1, :tv)]
          end

          def _active_participle
            [template("ματτα", :c1, :v), template("mətha", :tc1, :tv)]
          end
        end
      end
    end
  end
end
