module Grammars
  module TunisianHelper
    include Grammars::GrammarsHelper

    @@abbreviations_hash = {
      'FEM' => "Feminine",
      'MASC' => "Masculine",
      'PL' => "Plural",
      'SG' => "Singular"
    }

    def abbrev(string)
      str = string.split('.')
      meaning = []
      str.each do |s|
        meaning << (@@abbreviations_hash[s.upcase] or raise "Abbreviation #{s.upcase} is not defined")
      end
      "<abbr title='#{meaning.join(' ')}'>#{string.gsub('*', '')}</abbr>".html_safe
    end

    def nav_entry(title, ref, current)
      capture_haml do
        if current == ref
          haml_tag "li.current", title.html_safe
        else
          haml_tag :li, link_to(title.html_safe, tunisian_grammar_page_path(ref))
        end
      end
    end

    def form(word, pronunciation)
      if word
        "<i>#{word}</i><br/>#{pronunciation}".html_safe
      else
        "&mdash;".html_safe
      end
    end
  end
end
