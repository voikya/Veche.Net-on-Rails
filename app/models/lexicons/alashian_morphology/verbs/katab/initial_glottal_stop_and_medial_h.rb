require_relative 'initial_glottal'

module Morphology
  module Alashian
    module Verbs
      module Katab
        module InitialGlottalStopAndMedialH
          include Katab::InitialGlottal

          def subtype
            "C1 = ', C2 = H"
          end

          def _present_first_singular
            ["ω" + present_stem, "'ā" + present_stem_transliterated]
          end

          def _present_second_singular_masculine
            ["τει" + present_stem, "tī" + present_stem_transliterated]
          end

          def _present_second_singular_feminine
            ["τει" + present_stem(long_vowel: false) + "ει", "tī" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_third_singular_masculine
            ["ιει" + present_stem, "yī" + present_stem_transliterated]
          end

          def _present_third_singular_feminine
            ["ιει" + present_stem(long_vowel: false) + "ει", "yī" + present_stem_transliterated(long_vowel: false) + "ī"]
          end

          def _present_first_plural
            ["νει" + present_stem(long_vowel: false) + "ου", "nī" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_second_plural
            ["τει" + present_stem(long_vowel: false) + "ου", "tī" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _present_first_plural
            ["ιει" + present_stem(long_vowel: false) + "ου", "yī" + present_stem_transliterated(long_vowel: false) + "ū"]
          end

          def _imperfect_third_singular_feminine
            [template("ιε", :c2, "ε", :c3, "ω"), template("ye", :tc2, "e", :tc3, "ā")]
          end

          def _imperfect_third_plural
            [template("ιε", :c2, "ε", :c3, "ου"), template("ye", :tc2, "e", :tc3, "ū")]
          end

          def _pf_subjunctive_first_singular
            ["в̄ω" + present_stem(long_vowel: false), "vā" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_first_plural
            ["в̄ανὠ'" + present_stem(long_vowel: false), "vanā" + present_stem_transliterated(long_vowel: false)]
          end

          def _pf_subjunctive_second
            ["в̄ατὠ'" + present_stem(long_vowel: false), "vatā" + present_stem_transliterated(long_vowel: false)]
          end

          def _impf_subjunctive_first_singular
            ["ω" + present_stem + "α", "'ā" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_masculine
            ["τει" + present_stem + "α", "tī" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_second_singular_feminine
            ["τει" + present_stem + "ια", "tī" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_third_singular_masculine
            ["ιει" + present_stem + "α", "yī" + present_stem_transliterated + "a"]
          end

          def _impf_subjunctive_third_singular_feminine
            ["ιει" + present_stem + "ια", "yī" + present_stem_transliterated + "iya"]
          end

          def _impf_subjunctive_first_plural
            ["νει" + present_stem + "υ'α", "nī" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_second_plural
            ["τει" + present_stem + "υ'α", "tī" + present_stem_transliterated + "uwa"]
          end

          def _impf_subjunctive_third_plural
            ["ιει" + present_stem + "υ'α", "yī" + present_stem_transliterated + "uwa"]
          end

          def _passive_participle
            [template("μω", :c2, "ου", :c3), template("mā", :tc2, "ū", :tc3)]
          end

          private

          def present_stem(long_vowel: true)
            v = long_vowel ? :v : :short_v

            template(:c2, v, :c3)
          end

          def present_stem_transliterated(long_vowel: true)
            v = long_vowel ? :tv : :short_tv

            template(:tc2, v, :tc3)
          end
        end
      end
    end
  end
end
