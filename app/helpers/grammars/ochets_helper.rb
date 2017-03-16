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
      'DET' => "Determiner",
      'DISTRIB' => "Distributive",
      'DL' => "Dual",
      'GEN' => "Genitive",
      'HAR' => "Harmonic Vowel",
      'IMPER' => "Imperative",
      'IMPERS' => "Impersonal",
      'INAN' => "Inanimate",
      'IND' => "Indirective",
      'INDEF' => "Indefinite",
      'INF' => "Infinitive",
      'INF_PREFIX' => "Infitive Prefix",
      'INS' => "Instrumental",
      'INTERR' => "Interrogative Particle",
      'INTRANS' => "Intransitive",
      'LAT' => "Lative",
      'LOC' => "Locative",
      'NEG' => "Negative",
      'NOM' => "Nominative",
      'NOUN' => "Nominal",
      'OBJ' => "Objective",
      'OBJECT' => "Object",
      'PASS' => "Passive Voice",
      'PAST' => "Past Tense",
      'PL' => "Plural",
      'POS' => "Possessive",
      'PRES' => "Present Tense",
      'PRED' => "Predicative",
      'PTCPL' => "Participle",
      'QUOT' => "Quotative",
      'REC' => "Recipient",
      'REL' => "Relative",
      'SG' => "Singular",
      'SPLT' => "Split-Transitive",
      'STATIVE' => "Stative",
      'SUBJ' => "Subject",
      'THEME' => "Theme Vowel",
      'TRA' => "Translative",
      'VERB' => "Verb",
      '?' => "Unknown Morpheme"
    }

    def abbrev(string)
      string = string.gsub('{', '').gsub('}', '')
      html = ""
      # Input format like "abbrev", "+1", or "abbrev|+1"
      if string['|']
        # Both abbreviation and slot
        abbrev, _, slot = string.partition("|")
      elsif string =~ /^[+-]?[0-9]$/
        # Slot only
        slot = string
      else
        # Abbreviation only
        abbrev = string
      end

      if abbrev
        parts = abbrev.split('.')
        meaning = []
        parts.each do |s|
          meaning << (@@abbreviations_hash[s.upcase.gsub(/[<>]/, '')] or raise "Abbreviation #{s.upcase} is not defined")
        end
        html += "<abbr title='#{meaning.join(' ')}'>#{abbrev.gsub('*', '')}</abbr>"
      end

      if slot
        html += "<sup>#{slot}</sup>"
      end

      html.html_safe
    end

    def underlying(string)
      string.gsub(/{.*?}/) { |m| "<sup>#{m[1..-2]}</sup>" }.html_safe
    end

    # Custom example sentence helper for Očets
    def example_sentence(native, translit, breakdown, gloss, eng, options = {})
      @example_index += 1
      capture_haml do
        haml_tag 'table.textgloss' do
          haml_tag :tr do
            haml_tag :td, "(#{@example_index})"
            haml_tag :td do
              haml_tag 'span.native', native.html_safe
              haml_tag :br
              haml_tag 'span.translit', translit.html_safe
              haml_tag :br
              haml_tag 'span.breakdown', underlying(breakdown).html_safe
              haml_tag :br
              haml_tag 'span.gloss', gloss.gsub(/{.*?}/) { |m| abbrev(m[1..-2]) }.html_safe
              haml_tag :br
              haml_tag 'span.eng', "“#{eng}”".html_safe
              if options[:comment]
                html_tag :span, options[:comment].html_safe
              end
            end
          end
        end
      end
    end

    def nav_entry(title, ref, current)
      capture_haml do
        if current == ref
          haml_tag "li.current", title
        else
          haml_tag :li, link_to(title, ochets_grammar_page_path(ref))
        end
      end
    end
  end
end
