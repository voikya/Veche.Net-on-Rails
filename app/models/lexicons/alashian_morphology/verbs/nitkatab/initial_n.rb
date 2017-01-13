require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Nitkatab
        module InitialN
          include Nitkatab::Regular

          def subtype
            "C1 = N"
          end

          def _present_first_singular
            prefix = root.medial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_masculine
            prefix = root.medial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_second_singular_feminine
            prefix = root.medial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c2_geminated_or_aspirated, "α", :c3, "ει"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_third_singular_masculine
            prefix = root.medial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _present_third_singular_feminine
            prefix = root.medial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c2_geminated_or_aspirated, "α", :c3, "ει"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _present_first_plural
            prefix = root.medial_aspiratable? ? "nəthə" : "nətha"
            [template("ναττα", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_second_plural
            prefix = root.medial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _present_third_plural
            prefix = root.medial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            prefix = root.medial_aspiratable? ? "vāthə" : "vātha"
            [template("в̄ωττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_first_plural
            prefix = root.medial_aspiratable? ? "venəthə" : "venətha"
            [template("в̄εναττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_second
            prefix = root.medial_aspiratable? ? "vetəthə" : "vetətha"
            [template("в̄εταττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _pf_subjunctive_third
            prefix = root.medial_aspiratable? ? "vēthə" : "vētha"
            [template("в̄ηττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _impf_subjunctive_first_singular
            prefix = root.medial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c2_geminated_or_aspirated, "α", :c3, "α"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_masculine
            prefix = root.medial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c2_geminated_or_aspirated, "α", :c3, "α"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "a")]
          end

          def _impf_subjunctive_second_singular_feminine
            prefix = root.medial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c2_geminated_or_aspirated, "α", :c3, "ια"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_third_singular_masculine
            prefix = root.medial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c2_geminated_or_aspirated, "α", :c3, "α"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "a")]
          end

          def _impf_subjunctive_third_singular_feminine
            prefix = root.medial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c2_geminated_or_aspirated, "α", :c3, "ια"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "iya")]
          end

          def _impf_subjunctive_first_plural
            prefix = root.medial_aspiratable? ? "nəthə" : "nətha"
            [template("ναττα", :c2_geminated_or_aspirated, "α", :c3, "υ'α"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_second_plural
            prefix = root.medial_aspiratable? ? "təthə" : "tətha"
            [template("ταττα", :c2_geminated_or_aspirated, "α", :c3, "υ'α"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "uwa")]
          end

          def _impf_subjunctive_third_plural
            prefix = root.medial_aspiratable? ? "yəthə" : "yətha"
            [template("ιαττα", :c2_geminated_or_aspirated, "α", :c3, "υ'α"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "uwa")]
          end

          def _imperative_masculine_singular
            prefix = root.medial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _imperative_feminine_singular
            prefix = root.medial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c2_geminated_or_aspirated, "α", :c3, "ει"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ī")]
          end

          def _imperative_plural
            prefix = root.medial_aspiratable? ? "'əthə" : "'ətha"
            [template("αττα", :c2_geminated_or_aspirated, "α", :c3, "ου"), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3, "ū")]
          end

          def _infinitive
            prefix = root.medial_aspiratable? ? "māthə" : "mātha"
            [template("μωττα", :c2_geminated_or_aspirated, "α", :c3), template(prefix, :tc2_geminated_or_aspirated, "a", :tc3)]
          end

          def _active_participle
            prefix = root.medial_aspiratable? ? "məthə" : "mətha"
            [template("ματτα", :c2_geminated_or_aspirated, "ι", :c3), template(prefix, :tc2_geminated_or_aspirated, "i", :tc3)]
          end
        end
      end
    end
  end
end
