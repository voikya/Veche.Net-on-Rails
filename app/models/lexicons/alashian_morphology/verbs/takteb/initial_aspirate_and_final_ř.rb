require_relative 'initial_aspirate'

module Morphology
  module Alashian
    module Verbs
      module Takteb
        module InitialAspirateAndFinalR
          include Takteb::InitialAspirate

          def subtype
            "C1 = PH/TH/KH/TSH/ČH, C3 = Ř"
          end

          def _present_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "η'ι"), template("ti", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēyi")]
            else
              [template("τα", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "η'ι"), template("ta", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēyi")]
            end
          end

          def _present_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "η'ι"), template("yi", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēyi")]
            else
              [template("ια", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "η'ι"), template("ya", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēyi")]
            end
          end

          def _impf_subjunctive_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1_unaspirated, "α", :c2, :v, :c3, "εια"), template("ti", infix_transliterated, :tc1_unaspirated, "a", :tc2, :tv, :tc3, "eya")]
            else
              [template("τα", infix, :c1_unaspirated, "α", :c2, :v, :c3, "εια"), template("ta", infix_transliterated, :tc1_unaspirated, "a", :tc2, :tv, :tc3, "eya")]
            end
          end

          def _impf_subjunctive_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1_unaspirated, "α", :c2, :v, :c3, "εια"), template("yi", infix_transliterated, :tc1_unaspirated, "a", :tc2, :tv, :tc3, "eya")]
            else
              [template("ια", infix, :c1_unaspirated, "α", :c2, :v, :c3, "εια"), template("ya", infix_transliterated, :tc1_unaspirated, "a", :tc2, :tv, :tc3, "eya")]
            end
          end

          def _volitive_second_singular_feminine
            if root.tv == "ā"
              [template("τι", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "ηνα"), template("ti", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēna")]
            else
              [template("τα", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "ηνα"), template("ta", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēna")]
            end
          end

          def _volitive_third_singular_feminine
            if root.tv == "ā"
              [template("ι", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "ηνα"), template("yi", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēna")]
            else
              [template("ια", infix, :c1_unaspirated, "α", :c2, :short_v, :c3, "ηνα"), template("ya", infix_transliterated, :tc1_unaspirated, "a", :tc2, :short_tv, :tc3, "ēna")]
            end
          end

          def _imperative_feminine_singular
            [template("τα", :c1, :c2, :short_v, :c3, "η'ι"), template("tə", :tc1, :tc2, :short_tv, :tc3, "ēyi")]
          end

          def _precative_feminine_singular
            [template("τα", :c1, :c2, :short_v, :c3, "ηνα"), template("tə", :tc1, :tc2, :short_tv, :tc3, "ēna")]
          end

          def _active_participle
            [template("μι", infix, :c1_unaspirated, "α", :c2, "ε", :c3), template("mi", infix_transliterated, :tc1_unaspirated, "a", :tc2, "e", :tc3)]
          end
        end
      end
    end
  end
end
