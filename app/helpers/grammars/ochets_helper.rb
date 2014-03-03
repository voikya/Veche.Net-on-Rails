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
      'ACC' => "Accusative",
      'ANIM' => "Animate",
      'COLL' => "Collective",
      'COM' => "Comitative",
      'DAT' => "Dative",
      'DEF' => "Definite",
      'DL' => "Dual",
      'GEN' => "Genitive",
      'INAN' => "Inanimate",
      'IND' => "Indirective",
      'INF' => "Infinitive",
      'INF_PREFIX' => "Infitive Prefix",
      'INS' => "Instrumental",
      'LAT' => "Lative",
      'LOC' => "Locative",
      'NOM' => "Nominative",
      'NOUN' => "Nominal",
      'OBJ' => "Objective",
      'OBJECT' => "Object",
      'PL' => "Plural",
      'POS' => "Possessive",
      'PRES' => "Present",
      'PRED' => "Predicative",
      'REL' => "Relative",
      'SG' => "Singular",
      'SUBJECT' => "Subject",
      'TRA' => "Translative",
      'VERB' => "Verb"
    }

    def abbrev(string)
      str = string.split('.')
      meaning = []
      str.each do |s|
        meaning << (@@abbreviations_hash[s.upcase] or raise "Abbreviation #{s.upcase} is not defined")
      end
      "<abbr title='#{meaning.join(' ')}'>#{string.gsub('*', '')}</abbr>".html_safe
    end

    def underlying(string)
      string.gsub(/{.*?}/) { |m| "<sup>#{m[1..-2]}</sup>" }.html_safe
    end

    # Custom example sentence helper for Očets
    def example_sentence(fields)
      @example_index += 1
      capture_haml do
        haml_tag 'table.textgloss' do
          haml_tag :tr do
            haml_tag :td, "(#{@example_index})"
            haml_tag :td do
              if fields[:ochets]
                haml_tag 'span.native', fields[:ochets].html_safe
                haml_tag :br
              end
              if fields[:translit]
                haml_tag 'span.translit', fields[:translit].html_safe
                haml_tag :br
              end
              if fields[:breakdown]
                haml_tag 'span.translit', fields[:breakdown].html_safe
                haml_tag :br
              end
              if fields[:underlying]
                haml_tag 'span.underlying', underlying(fields[:underlying])
                haml_tag :br
              end
              if fields[:gloss]
                haml_tag 'span.gloss', fields[:gloss].gsub(/{.*?}/) { |m| abbrev(m[1..-2]) }.html_safe
                haml_tag :br
              end
              if fields[:eng]
                haml_tag 'span.eng', "“#{fields[:eng].html_safe}”"
              end
              if fields[:comment]
                haml_tag :span, fields[:comment].html_safe
              end
            end
          end
        end
      end
    end
  end
end
