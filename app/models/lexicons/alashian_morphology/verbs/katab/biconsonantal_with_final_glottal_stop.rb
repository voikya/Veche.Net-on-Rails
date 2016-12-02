require_relative 'biconsonantal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module BiconsonantalWithFinalGlottalStop
          include Katab::Biconsonantal

          def subtype
            "Biconsonantal Root with C3 = '"
          end

          def _present_first_singular
            [template("α", :c1, :v, :c2), template("'a", :tc1, :tv)]
          end

          def _present_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v), template("ti", :tc1, :tv)]
            else
              [template("τα", :c1, :v), template("ta", :tc1, :tv)]
            end
          end

          def _present_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v), template("yi", :tc1, :tv)]
            else
              [template("ια", :c1, :v), template("ya", :tc1, :tv)]
            end
          end

          def _preterite_first_singular
            [template(:c1, :v, "τ"), template(:tc1, :tv, "t")]
          end

          def _preterite_second_singular_masculine
            [template(:c1, :v, "ττα"), template(:tc1, :tv, "tha")]
          end

          def _preterite_second_singular_feminine
            [template(:c1, :v, "τζζε"), template(:tc1, :tv, "čhe")]
          end

          def _preterite_third_singular_masculine
            [template(:c1, :v), template(:tc1, :tv)]
          end

          def _preterite_first_plural
            [template(:c1, :v, "ννω"), template(:tc1, :tv, "nnā")]
          end

          def _preterite_second_plural_masculine
            [template(:c1, :v, "ττυν"), template(:tc1, :tv, "thun")]
          end

          def _preterite_second_plural_feminine
            [template(:c1, :v, "τζζιν"), template(:tc1, :tv, "čhin")]
          end

          def _imperfect_first_singular
            [template(:c1, "ιη'ηε"), template(:tc1, "iehe")]
          end

          def _imperfect_second_singular_masculine
            [template(:c1, "ιη'ηἠτ"), template(:tc1, "iehēt")]
          end

          def _imperfect_second_singular_feminine
            [template(:c1, "ιη'ηἠς̄"), template(:tc1, "iehēš")]
          end

          def _imperfect_third_singular_masculine
            [template(:c1, "η'ηε"), template(:tc1, "ēhe")]
          end

          def _imperfect_third_singular_feminine
            [template(:c1, "η'ηω"), template(:tc1, "ēhā")]
          end

          def _imperfect_first_plural
            [template(:c1, "ιη'ηἠν"), template(:tc1, "iehēn")]
          end

          def _imperfect_second_plural_masculine
            [template(:c1, "ιη'ηαττυν"), template(:tc1, "iehəthun")]
          end

          def _imperfect_second_plural_feminine
            [template(:c1, "ιη'ηατζζιν"), template(:tc1, "iehəčhin")]
          end

          def _imperfect_third_plural
            [template(:c1, "η'ηου"), template(:tc1, "ēhū")]
          end

          def _pf_subjunctive_first_singular
            [template("в̄α", :c1, :v), template("va", :tc1, :tv)]
          end

          def _pf_subjunctive_first_plural
            [template("в̄ανα", :c1, :v), template("vana", :tc1, :tv)]
          end

          def _pf_subjunctive_second
            [template("в̄ατα", :c1, :v), template("vata", :tc1, :tv)]
          end

          def _pf_subjunctive_third
            [template("в̄η", :c1, :v), template("vē", :tc1, :tv)]
          end

          def _impf_subjunctive_first_singular
            [template("α", :c1, :v, :c2, "'α"), template("'a", :tc1, :tv, :tc2, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "'α"), template("ti", :tc1, :tv, :tc2, "a")]
            else
              [template("τα", :c1, :v, :c2, "'α"), template("ta", :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "ιι'α"), template("ti", :tc1, :tv, :tc2, "iya")]
            else
              [template("τα", :c1, :v, :c2, "ιι'α"), template("ta", :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_third_singular_masculine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "'α"), template("yi", :tc1, :tv, :tc2, "a")]
            else
              [template("ια", :c1, :v, :c2, "'α"), template("ya", :tc1, :tv, :tc2, "a")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "ιι'α"), template("yi", :tc1, :tv, :tc2, "iya")]
            else
              [template("ια", :c1, :v, :c2, "ιι'α"), template("ya", :tc1, :tv, :tc2, "iya")]
            end
          end

          def _impf_subjunctive_first_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("νι", :c1, :v, :c2, "υυ'α"), template("ni", :tc1, :tv, :tc2, "uwa")]
            else
              [template("να", :c1, :v, :c2, "υυ'α"), template("na", :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_second_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("τι", :c1, :v, :c2, "υυ'α"), template("ti", :tc1, :tv, :tc2, "uwa")]
            else
              [template("τα", :c1, :v, :c2, "υυ'α"), template("ta", :tc1, :tv, :tc2, "uwa")]
            end
          end

          def _impf_subjunctive_third_plural
            if root.tv == "ā" || root.tv == "ū"
              [template("ι", :c1, :v, :c2, "υυ'α"), template("yi", :tc1, :tv, :tc2, "uwa")]
            else
              [template("ια", :c1, :v, :c2, "υυ'α"), template("ya", :tc1, :tv, :tc2, "uwa")]
            end
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

          def _imperative_masculine_singular
            [template(:c1, :v), template(:tc1, :tv)]
          end

          def _infinitive
            [template(:c1, :v), template(:tc1, :tv)]
          end

          def _active_participle
            [template(:c1, "ου'ηε"), template(:tc1, "ūhe")]
          end

          def _passive_participle
            [template("μα", :c1, :v), template("ma", :tc1, :tv)]
          end
        end
      end
    end
  end
end
