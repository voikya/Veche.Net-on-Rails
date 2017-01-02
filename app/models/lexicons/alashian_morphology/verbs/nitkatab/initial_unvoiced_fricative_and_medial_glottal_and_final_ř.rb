require_relative 'initial_unvoiced_fricative_and_medial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialUnvoicedFricativeAndMedialGlottalAndFinalR
          include Nitkatab::InitialUnvoicedFricativeAndMedialGlottal

          def subtype
            "C1 = F/Ṯ/S/Š/X, C2 = '/H, C3 = Ř"
          end

          def _present_second_singular_feminine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "η'ι"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ēyi")]
          end

          def _present_third_singular_feminine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "η'ι"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ēyi")]
          end

          def _impf_subjunctive_second_singular_feminine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "εια"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "eya")]
          end

          def _impf_subjunctive_third_singular_feminine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "εια"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "eya")]
          end

          def _volitive_second_singular_feminine
            prefix = root.initial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c1_geminated_or_aspirated, "α", :c3, "ηνα"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ēna")]
          end

          def _volitive_third_singular_feminine
            prefix = root.initial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c1_geminated_or_aspirated, "α", :c3, "ηνα"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ēna")]
          end

          def _imperative_feminine_singular
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3, "η'ι"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ēyi")]
          end

          def _precative_feminine_singular
            prefix = root.initial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c1_geminated_or_aspirated, "α", :c3, "ηνα"), template(prefix, :tc1_geminated_or_aspirated, "a", :tc3, "ēna")]
          end

          def _active_participle
            prefix = root.initial_aspiratable? ? "məthə" : "mətha"
            [template("ματτα", :c1_geminated_or_aspirated, "ε", :c3), template(prefix, :tc1_geminated_or_aspirated, "e", :tc3)]
          end
        end
      end
    end
  end
end
