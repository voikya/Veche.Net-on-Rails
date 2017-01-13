require_relative 'regular'

module Morphology
  module Alashian
    module Verbs
      module Staktab
        module InitialN
          include Staktab::Regular

          def subtype
            "C1 = N"
          end

          def _active_participle
            tprefix = root.medial_aspiratable? ? "mustə" : "musta"
            [template("μυστα", :c2_geminated_or_aspirated, "ι", :c3), template(tprefix, :tc2_geminated_or_aspirated, "i", :tc3)]
          end

          private

          def stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στα", :c2_geminated_or_aspirated, "α", c3)
          end

          def stem_transliterated(lenition: false)
            prefix = root.medial_aspiratable? ? "stə" : "sta"
            tc3 = lenition ? :tc3_lenited : :tc3
            template(prefix, :tc2_geminated_or_aspirated, "a", tc3)
          end

          def imperfect_stem(lenition: false)
            c3 = lenition ? :c3_lenited : :c3
            template("στα", :c2_geminated_or_aspirated, "ιη", c3)
          end

          def imperfect_stem_transliterated(lenition: false)
            prefix = root.medial_aspiratable? ? "stə" : "sta"
            tc3 = lenition ? :tc3_lenited : :tc3
            template(prefix, :tc2_geminated_or_aspirated, "ie", tc3)
          end
        end
      end
    end
  end
end
