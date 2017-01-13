require_relative 'medial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Ketheb
        module MedialGlottalAndFinalR
          include Ketheb::MedialGlottal

          def subtype
            "C2 = '/H, C3 = Ř"
          end

          def _present_second_singular_feminine
            [template("τι", :c1, "α", :c2, "α", :c3, "η'ι"), template("ti", :tc1, "ə", :tc2, "a", :tc3, "ēyi")]
          end

          def _present_third_singular_feminine
            [template("ι", :c1, "α", :c2, "α", :c3, "η'ι"), template("yi", :tc1, "ə", :tc2, "a", :tc3, "ēyi")]
          end

          def _impf_subjunctive_second_singular_feminine
            [template("τι", :c1, "α", :c2, "ω", :c3, "εια"), template("ti", :tc1, "ə", :tc2, "ā", :tc3, "eya")]
          end

          def _impf_subjunctive_third_singular_feminine
            [template("ι", :c1, "α", :c2, "ω", :c3, "εια"), template("yi", :tc1, "ə", :tc2, "ā", :tc3, "eya")]
          end

          def _volitive_second_singular_feminine
            [template("τι", :c1, "α", :c2, "α", :c3, "ηνα"), template("ti", :tc1, "ə", :tc2, "a", :tc3, "ēna")]
          end

          def _volitive_third_singular_feminine
            [template("ι", :c1, "α", :c2, "α", :c3, "ηνα"), template("yi", :tc1, "ə", :tc2, "a", :tc3, "ēna")]
          end

          def _imperative_feminine_singular
            [template(:c1, "α", :c2, "ε", :c3, "η'ι"), template(:tc1, "ə", :tc2, "e", :tc3, "ēyi")]
          end

          def _precative_feminine_singular
            [template(:c1, "α", :c2, "ε", :c3, "ηνα"), template(:tc1, "ə", :tc2, "e", :tc3, "ēna")]
          end

          def _active_participle
            [template("μυ", :c1, "α", :c2, "ε", :c3), template("mu", :tc1, "ə", :tc2, "e", :tc3)]
          end
        end
      end
    end
  end
end
