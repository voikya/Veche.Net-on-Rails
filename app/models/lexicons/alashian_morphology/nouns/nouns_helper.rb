module Morphology
  module Alashian
    module Nouns
      private

      def determinate(forms)
        case forms[1]
          when /^h/
            ["ν#{forms[0][1..-1]}", "n#{forms[1][1..-1]}"]
          when /^'/
            ["ν#{forms[0]}", "n#{forms[1][1..-1]}"]
          when /^r/
            ["αδ#{forms[0]}", "had#{forms[1]}"]
          when /^yi/
            ["αι#{forms[0]}", "hay#{forms[1]}"]
          when /^[ptksč]/
            if root.initial_aspirate?
              if root.tc1 == 'čh'
                ["ατζζ#{forms[0][2..-1]}", "həčh#{forms[1][1..-1]}"]
              elsif root.tc1 == 'tsh'
                ["ατ#{forms[0]}", "hətsh#{forms[1][1..-1]}"]
              else
                ["α#{forms[0][0]}#{forms[0]}", "hə#{forms[1][0]}h#{forms[1][1..-1]}"]
              end
            else
              ["α#{geminate_initial_consonant(forms[0])}", "ha#{geminate_initial_consonant(forms[1])}"]
            end
          else
            ["α#{geminate_initial_consonant(forms[0])}", "ha#{geminate_initial_consonant(forms[1])}"]
        end
      end

      def partitive(forms)
        case forms[1]
          when /^h/
            ["μιν#{forms[0][1..-1]}", "min#{forms[1][1..-1]}"]
          when /^'/
            ["μιν#{forms[0]}", "min#{forms[1][1..-1]}"]
          when /^r/
            ["μιδ#{forms[0]}", "mid#{forms[1]}"]
          when /^y/
            ["μι#{forms[0]}", "miy#{forms[1]}"]
          when /^[ptksč]/
            if root.initial_aspirate?
              if root.tc1 == 'čh'
                ["ματζζ#{forms[0][2..-1]}", "məčh#{forms[1][1..-1]}"]
              elsif root.tc1 == 'tsh'
                ["ματ#{forms[0]}", "mətsh#{forms[1][1..-1]}"]
              else
                ["μα#{forms[0][0]}#{forms[0]}", "mə#{forms[1][0]}h#{forms[1][1..-1]}"]
              end
            else
              ["μι#{geminate_initial_consonant(forms[0])}", "mi#{geminate_initial_consonant(forms[1])}"]
            end
          else
            ["μι#{geminate_initial_consonant(forms[0])}", "mi#{geminate_initial_consonant(forms[1])}"]
        end
      end
    end
  end
end
