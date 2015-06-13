module Morphology
  module Novegradian
    module Verbs
      def postprocess(forms, method)
        return forms unless forms && forms.all?{|f| f.is_a?(String)}

        if middle_voice?
          if method == :_supine
            if %w(к г).include?(forms[0][-1])
              [forms[0] + "ци", forms[1] + "ci"]
            else
              infinitive = _infinitive
              [infinitive[0][0..-3] + "ци", infinitive[1][0..-3] + "ci"]
            end
          elsif method["subjunctive"]
            [
              forms[0].sub(" ", "ш "),
              forms[1].sub(" ", "ś ")
            ]
          elsif [:_perfective, :_imperfective].include?(method)
            forms
          elsif method["passive"]
            nil
          elsif forms[0][-1] == "н"
            [forms[0][0..-2] + "ш", forms[1][0..-2] + "ś"]
          elsif forms[0][-1] == "т"
            [forms[0][0..-2] + "ци", forms[1][0..-2] + "ci"]
          elsif %w(а е ё и о у ѣ ю я ы).include?(forms[0][-1])
            [forms[0] + "ш", forms[1] + "ś"]
          else
            [forms[0] + "ши", forms[1] + "śi"]
          end
        else
          forms
        end
      end
    end
  end
end
