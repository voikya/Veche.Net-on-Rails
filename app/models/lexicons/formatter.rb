module Lexicons
  class Formatter
    attr_reader :text, :name
    def initialize(name, text)
      @text = text
      @name = name
    end

    def tokenize
      raise NotImplementedError
    end

    def to_html
      raise NotImplementedError
    end

    def class_name
      @name.to_s.dasherize
    end

    private

    def clean_text
      @text.gsub(/{.*?}/, '')
    end
  end

  class PlainTextFormatter < Formatter
    def tokenize
      [clean_text]
    end

    def to_html
      "<div class='#{class_name}'>#{@text}</div>"
    end
  end

  class CanonicalFormFormatter < PlainTextFormatter
  end

  class TransliterationFormatter < PlainTextFormatter
  end

  class PronunciationFormatter < PlainTextFormatter
  end

  class PartOfSpeechFormatter < PlainTextFormatter
  end

  class RootFormatter < PlainTextFormatter
    def to_html
      "<div class='#{class_name}'>#{contents}</div>"
    end

    private

    def contents
      %Q(<a class="root" href=".?root=#{@text}">#{@text}</a>)
    end
  end

  class RichTextFormatter < Formatter
    def tokenize
      [clean_text]
    end

    def to_html
      "<div class='#{class_name}'>#{contents}</div>"
    end

    private

    def contents
      format(@text)
    end

    def format(text)
      text.gsub! /{.*?}/, '<i>\1</i>'
      text.split(/\r?\n/).map {|line| "<p>#{line}</p>"}.join
    end
  end

  class EtymologyFormatter < RichTextFormatter
  end

  class CognateFormatter < RichTextFormatter
  end

  class NoteFormatter < RichTextFormatter
    def contents
      [
        "<fieldset>",
        "<legend>Notes</legend>",
        super,
        "</fieldset>"
      ].join
    end
  end

  class DefinitionFormatter < Formatter
    def tokenize(opts = {})
      # Legacy Format:
      #   [[def1.1, def1.2]]
      #   [[def2]]
      #   [[def3.1, def3.2, def3.3]]
      #   ...
      base = opts[:formatted] ? @text : clean_text
      base.split(/[\[\]]/).select(&:present?).map {|f| f.split(',').map(&:strip)}
    end

    def summary
      clean_text.split(/[\[\]]/).select(&:present?).first
    end

    def to_html
      "<div class='#{class_name}'>#{contents}</div>"
    end

    private

    def contents
      [
        "<ol>",
        tokenize(:formatted => true).map do |line|
          "<li>#{format line.join(', ')}</li>"
        end,
        "</ol>"
      ].join
    end

    def format(text)
      text.gsub /{(.*?)}/, '<span class="comment">\1</span>'
    end
  end

  class ImportantFormsFormatter < Formatter
    def tokenize
      # Legacy Format:
      #   [[Type| Metadata]]
      #   [[Type| form1, form2, form3 {translit1, translit2, translit3}]]
      #   [[Type| form4, form5, form6 {translit4, translit5, translit6}]]
      #   ...
      @text.split(/\r?\n/)[1..-1].map{|a| a.split('|')[1].split(/\p{^Word}/).select(&:present?)}
    end

    def tokenize_with_labels
      @text.split(/\r?\n/).map{|a| a.split(/[\|{}\[\]]/).select(&:present?)}
    end

    def to_html
      "<div class='#{class_name}'>#{contents}</div>"
    end

    private

    def contents
      tokenize_with_labels.map do |line|
        [
          "<span class='label'>#{line[0]}:</span>",
          line[1],
          ("<span class='transliteration'>#{line[2]}</span>" if line[2])
        ].compact.join(' ')
      end.join("<br/>")
    end
  end

  class IdiomFormatter < Formatter
    def tokenize
      # Legacy Format:
      #   Example Sentence
      #   {Transliteration}
      #   "Meaning"
      #   ...
      @text.split(/\r?\n/).map{|l| l.gsub(/^[{"]([^"}]*)[}"]?$/, '\1')}.select(&:present?).compact
    end

    def to_html
      "<div class='#{class_name}'>#{contents}</div>"
    end

    private

    def contents
      tokenize.map.with_index do |l, idx|
        case idx % 3
          when 0, 2 then l
          when 1 then "<i>#{l}</i>"
        end
      end.each_slice(3).map do |example|
        "<p>#{example.join('<br>')}</p>"
      end.join
    end
  end

  class CrossReferenceFormatter < Formatter
    def to_html
      if @text.length > 0
        "<div class='#{class_name}'>#{contents}</div>"
      else
        ""
      end
    end

    private

    def contents
      [
        "<ul>",
        @text.map do |xref|
          formatted_slug = xref.slug.gsub(/^([^0-9]*)([0-9]*)$/, '\1<sup>\2</sup>')
          %Q(<li><a href="#{xref.slug}">#{formatted_slug}</a> "#{xref.definition_summary}"</li>)
        end,
        "</ul>"
      ].flatten.join
    end
  end

  class DerivativeFormatter < Formatter
    def tokenize
      # Legacy Format:
      #   [[word | transliteration | pronunciation | part of speech | definition | notes]]
      #   'notes' is '*' if no content
      @text.split(/\r?\n/).map do |line|
        line_values = line.split('|').values_at(0,1,4).map(&:strip)
        line_values[2] = line_values[2].split(',').map(&:strip)
        line_values
      end
    end

    def to_html
      "<div class='#{class_name}'>#{contents}</div>"
    end

    private

    def contents
      [
        "<fieldset>",
        "<legend>Derived Words</legend>",
        @text.split(/\r?\n/).map do |line|
          split_line = line.gsub(/(\[\[|\]\])/, '').split('|').map(&:strip)
          %Q(
            <div class="derivative-word">
              <div class="word">#{split_line[0]}</div>
              <div class="transliteration">#{split_line[1]}</div>
              <div class="pronunciation">#{split_line[2]}</div>
              <div class="part-of-speech">#{split_line[3]}</div>
              <div class="definition">#{split_line[4]}</div>
              #{split_line[5] != '*' ? "<div class=\"notes\">#{split_line[5].gsub(/[{}]/, '')}</div>" : ""}
            </div>
          )
        end,
        "</fieldset>"
      ].flatten.join
    end
  end

  class MorphologyFormatter < Formatter
    def to_html
      if @text
        "<div class='#{class_name}'>#{@text}</div>"
      else
        ""
      end
    end
  end
end
