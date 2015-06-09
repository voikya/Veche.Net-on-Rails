module Lexicons
  class Formatter
    attr_reader :text, :name

    def initialize(name, text)
      @name = name.to_s.dasherize
      @text = text
    end

    def tokenize
      [clean_text]
    end

    def to_json
      {
        :name => @name,
        :value => (@text.present? ? format(@text) : nil),
        :type => formatter_type
      }
    end

    # Should return newly-set value
    def update(value)
      @text = value
    end

    private

    def clean_text
      @text.gsub(/{{.*?}}/, '')
    end

    def format(str)
      str
    end

    def formatter_type
      self.class.name.split('::').last.gsub('Formatter', '')
    end
  end

  class PlainTextFormatter < Formatter
  end

  class RootFormatter < Formatter
    def tokenize
      clean_text.split(',')
    end

    def update(value)
      if value
        @text = value.join(',')
      else
        @text = nil
      end
    end

    private

    def format(str)
      str.split(',')
    end
  end

  class RichTextFormatter < Formatter
    # Note: Rich text fields accept basic inline markup that is
    # converted to the appropriate form on the front end. These
    # consist of:
    # {{text}} - commentary (italicized, excluded from search)
    # ++slug++ - cross reference (link to another entry)

    def tokenize
      clean_text.split(/\r?\n/).reject(&:blank?)
    end

    def update(value)
      if value
        @text = value.join("\n\n")
      else
        @text = nil
      end
      @text
    end

    private

    def format(str)
      str.split(/\r?\n/).reject(&:blank?)
    end
  end

  class NoteFormatter < RichTextFormatter
  end

  class DefinitionFormatter < RichTextFormatter
    def tokenize
      super.gsub(/[\[\]]/, '').map{|t| t.split(',')}.flatten
    end

    def summary
      clean_text.split(/\r?\n/).first.strip
    end

    def update(value)
      if value
        @text = value.map{|v| "[[#{v}]]"}.join("\n")
        super [@text]
      else
        @text = nil
      end
    end

    private

    def clean_text
      super.gsub(/[\[\]]/, '')
    end

    def format(str)
      super str.gsub(/[\[\]]/, '')
    end
  end

  class ImportantFormsFormatter < RichTextFormatter
    def tokenize
      # Legacy Format:
      #   [[Type| Metadata]]
      #   [[Type| form1, form2, form3 {translit1, translit2, translit3}]]
      #   [[Type| form4, form5, form6 {translit4, translit5, translit6}]]
      #   ...
      @text.split(/\r?\n/)[1..-1].map{|a| a.split('|')[1].split(/\p{^Word}/).select(&:present?)}
    end

    def update(value)
      if value
        @text = value.map{|k, v| "[[#{k}| #{v}]]"}.join("\n")
        super [@text]
      else
        @text = nil
      end
    end

    private

    def format(str)
      super.reduce({}) do |memo, current|
        label, value = current.gsub(/[\[\]]/, '').split('|').map(&:strip)
        memo[label] = value
        memo
      end
    end
  end

  class ExampleFormatter < RichTextFormatter
    def tokenize
      # Legacy Format:
      #   Example Sentence
      #   {Transliteration}
      #   "Meaning"
      #   ...
      if @text
        @text.split(/\r?\n/).map{|l| l.gsub(/^[{"]([^"}]*)[}"]?$/, '\1')}.select(&:present?).compact
      else
        [""]
      end
    end

    def update(value)
      if value
        @text = value.map do |ex|
          "#{ex[:example]}\n{#{ex[:transliteration]}}\n\"#{ex[:translation]}\""
        end.join("\n\n")
      else
        @text = nil
      end
    end

    private

    def format(str)
      tokenize.each_slice(3).map do |example|
        {
          :example => example[0],
          :transliteration => example[1],
          :translation => example[2]
        }
      end
    end
  end

  class CrossReferenceFormatter < Formatter
    private

    def format(str)
      @text.map do |xref|
        {
          :slug => xref.slug,
          :summary => xref.definition_summary
        }
      end
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

    def update(value)
      if value
        @text = value.map do |v|
          "[[" + [
            v[:word],
            v[:transliteration],
            v[:pronunciation],
            v[:partOfSpeech],
            v[:definition],
            v[:notes] || '*'
          ].join(" | ") + "]]"
        end.join("\n")
      else
        @text = nil
      end
    end

    private

    def format(str)
      @text.split(/\r?\n/).map do |line|
        split_line = line.gsub(/(\[\[|\]\])/, '').split('|').map(&:strip)
        {
          :word => split_line[0],
          :transliteration => split_line[1],
          :pronunciation => split_line[2],
          :partOfSpeech => split_line[3],
          :definition => split_line[4],
          :notes => (split_line[5] != '*' ? split_line[5].gsub(/[{}]/, '') : nil)
        }
      end
    end
  end

  class MorphologyFormatter < Formatter
  end
end
