require_relative 'regular'

module Morphology
  module Alashian
    module Nouns
      module Masculine
        module FinalAspirate
          include Masculine::Regular

          def subtype
            "Final Aspirate"
          end

          def _absolute_plural
            [aspirate_stem + "ιην", aspirate_stem_transliterated + "ien"]
          end

          def _construct_plural
            [aspirate_stem + "η", aspirate_stem_transliterated + "ē"]
          end

          private

          def aspirate_stem
            if stem[-1] == "σ"
              stem[0..-2] + "τσ"
            elsif stem[-2..-1] == "τζ"
              stem[0..-3] + "τζζ"
            else
              stem + stem[-1]
            end.gsub(/(α|ω|ε|η|ι|ει|υ|ου|ιη|υω)(?=ππ$|ττ$|κκ$|τσ$|τζζ$)/, "α")
          end

          def aspirate_stem_transliterated
            if stem_transliterated[-1] == "s"
              stem_transliterated[0..-2] + "tsh"
            else
              stem_transliterated + "h"
            end.gsub(/(a|ā|e|ē|i|ī|u|ū|ie|uo)(?=ph$|th$|kh$|tsh$|čh$)/, "ə")
          end
        end
      end
    end
  end
end
