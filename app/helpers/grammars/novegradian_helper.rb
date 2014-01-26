module Grammars
  module NovegradianHelper
    @@abbreviations_hash = {
      '1' => "First Person",
      '1SG' => "First Person Singular",
      '1DL' => "First Person Dual",
      '1PL' => "First Person Plural",
      '2' => "Second Person",
      '2SG' => "Second Person Singular",
      '2DL' => "Second Person Dual",
      '2PL' => "Second Person Plural",
      '3' => "Third Person",
      '3SG' => "Third Person Singular",
      '3DL' => "Third Person Dual",
      '3PL' => "Third Person Plural",
      'ABS' => "Absolute Pronoun",
      'ACC' => "Accusative",
      'ACT' => "Active Voice",
      'ADJ' => "Adjective",
      'ADV' => "Adverb",
      'AGENT' => "Agentive",
      'ANIM' => "Animate",
      'CLITIC' => "Clitic",
      'COLL' => "Colloquial",
      'COMP' => "Comparative",
      'COND' => "Conditional",
      'CS' => "Late Common Slavic",
      'DAT' => "Dative",
      'DATINS' => "Dative-Instrumental",
      'DEF' => "Definite",
      'DET' => "Determinate",
      'DIMIN' => "Diminutive",
      'DIST' => "Distributive",
      'DL' => "Dual",
      'DUR' => "Durative",
      'EMPH' => "Emphatic",
      'EXCESS' => "Excessive Degree",
      'EXPL' => "Overt Expletive",
      'F' => "Feminine",
      'FEM' => "Feminine",
      'FUT' => "Future",
      'GEN' => "Genitive",
      'IE' => "Indo-European",
      'IMPER' => "Imperative",
      'IMPF' => "Imperfective",
      'IMPF/PF' => "Imperfective/Perfective",
      'IMPERS' => "Impersonal",
      'INAN' => "Inanimate",
      'INCH' => "Inchoative",
      'INDEF' => "Indefinite",
      'INDET' => "Indeterminate",
      'INF' => "Infinitive",
      'INTENS' => "Intensive Degree",
      'INTR' => "Intransitive",
      'ITER' => "Iterative",
      'LAT' => "Lative",
      'LIT' => "Literally",
      'LOC' => "Locative",
      'M' => "Masculine",
      'MASC' => "Masculine",
      'MID' => "Middle Voice",
      'N' => "Neuter",
      'N*' => "Intrusive 'N'",
      'NEG' => "Negative",
      'NEUT' => "Neuter",
      'NOM' => "Nominative",
      'NONFUT' => "Non-Future",
      'NOV' => "Novegradian",
      'OCS' => "Old Church Slavonic",
      'ON' => "Old Novegradian",
      'OPT' => "Optative",
      'PART' => "Partitive",
      'PASS' => "Passive Voice",
      'PAST' => "Past",
      'PF' => "Perfective",
      'PIE' => "Proto-Indo-European",
      'PL' => "Plural",
      'POET' => "Poetic",
      'POSS' => "Possessive",
      'PRES' => "Present",
      'PTCP' => "Participle",
      'Q' => "Interrogative Particle",
      'QUAL' => "Qualitative",
      'REFLX' => "Reflexive",
      'REL' => "Relative Pronoun",
      'SG' => "Singular",
      'SL' => "Slang",
      'SUBJ' => "Subjunctive",
      'SUP' => "Supine",
      'SUPER' => "Superlative",
      'TEL' => "Telic",
      'TOP' => "Topic Marker",
      'TR' => "Transitive",
      'TRI' => "Trial Superlative",
      'V*' => "Intrusive 'V'",
      'VOC' => "Vocative"
    }

    def abbrev(string)
      str = string.split('.')
      meaning = []
      str.each do |s|
        meaning << (@@abbreviations_hash[s.upcase] or raise "Abbreviation #{s.upcase} is not defined")
      end
      "<abbr title='#{meaning.join(' ')}'>#{string.gsub('*', '')}</abbr>".html_safe
    end
  end
end
