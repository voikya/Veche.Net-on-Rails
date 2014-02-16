module Grammars
  module OchetsHelper
    include Grammars::GrammarsHelper

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
      'ABE' => "Abessive",
      'ABL' => "Ablative",
      'ANIM' => "Animate",
      'COM' => "Comitative",
      'DEF' => "Definite",
      'DL' => "Dual",
      'GEN' => "Genitive",
      'INAN' => "Inanimate",
      'IND' => "Indirective",
      'INS' => "Instrumental",
      'LAT' => "Lative",
      'LOC' => "Locative",
      'NOM' => "Nominative",
      'OBJ' => "Objective",
      'PL' => "Plural",
      'POS' => "Possessive",
      'SG' => "Singular",
      'TRA' => "Translative"
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
