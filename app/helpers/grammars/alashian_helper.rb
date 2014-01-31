module Grammars
  module AlashianHelper
    @@abbreviations_hash = {
      '1' => "First Person",
      '1SG' => "First Person Singular",
      '1PL' => "First Person Plural",
      '2' => "Second Person",
      '2SG' => "Second Person Singular",
      '2PL' => "Second Person Plural",
      '3' => "Third Person",
      '3SG' => "Third Person Singular",
      '3PL' => "Third Person Plural",
      'ABS' => "Absolute State",
      'ACC' => "Accusative",
      'ACT' => "Active",
      'ADV' => "Adverb",
      'CLITIC' => "Clitic Pronoun",
      'CONST' => "Construct State",
      'COUNTERF' => "Counterfactual Conditional",
      'DET' => "Determinate State",
      'DISJUNCT' => "Disjunctive Pronoun",
      'DL' => "Dual",
      'EMPH' => "Emphatic",
      'EXPL' => "Syntactic Expletive",
      'FEM' => "Feminine",
      'FUT' => "Future Auxiliary",
      'GEN' => "Genitive–Dative",
      'IMPER' => "Imperative",
      'IMPF' => "Imperfect",
      'INF' => "Infinitive",
      'INTERR' => "Interrogative Particle",
      'MASC' => "Masculine",
      'NEG' => "Negative",
      'NOM' => "Nominative",
      'PART' => "Partitive State",
      'PASS' => "Passive",
      'PF' => "Perfective",
      'PL' => "Plural",
      'PREC' => "Precative",
      'PRES' => "Present",
      'PRET' => "Preterite",
      'PRON' => "Pronoun",
      'PTCPL' => "Participle",
      'SG' => "Singular",
      'SUB' => "Subordinating Conjunction",
      'SUBJ' => "Subjunctive",
      'VOL' => "Volitive"
    }

    def abbrev(string)
      str = string.split('.')
      meaning = []
      str.each do |s|
        meaning << (@@abbreviations_hash[s.upcase] or raise "Abbreviation #{s.upcase} is not defined")
      end
      "<abbr title='#{meaning.join(' ')}'>#{string.gsub('*', '')}</abbr>".html_safe
    end

    def template(string)
      string.gsub(/(\d)/, '<sub>\1</sub>').html_safe
    end
  end
end
