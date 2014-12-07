module Lexicons
  class Formatter
    def initialize(name, text)
      @text = text
      @name = name
    end

    def tokenize
      raise NotImplementedError
    end

    def clean_text
      @text.gsub(/{.*?}/, '')
    end
  end

  class PlainTextFormatter < Formatter
    def tokenize
      [clean_text]
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
  end

  class RichTextFormatter < Formatter
    def tokenize
      [clean_text]
    end
  end

  class NoteFormatter < RichTextFormatter
  end

  class EtymologyFormatter < RichTextFormatter
  end

  class CognateFormatter < RichTextFormatter
  end

  class DefinitionFormatter < Formatter
    def tokenize
      # Legacy Format:
      #   [[def1.1, def1.2]]
      #   [[def2]]
      #   [[def3.1, def3.2, def3.3]]
      #   ...
      clean_text.split(/[\[\]]/).select(&:present?).map {|f| f.split(',').map(&:strip)}
    end
  end

  class MorphologyFormatter < Formatter
    def tokenize
      # Legacy Format:
      #   [[Type| Metadata]]
      #   [[Type| form1, form2, form3 {translit1, translit2, translit3}]]
      #   [[Type| form4, form5, form6 {translit4, translit5, translit6}]]
      #   ...
      @text.split(/\r?\n/)[1..-1].map{|a| a.split('|')[1].split(/\p{^Word}/).select(&:present?)}
    end
  end

  class IdiomFormatter < Formatter
    def tokenize
      # Legacy Format:
      #   Example Sentence
      #   {Transliteration}
      #   "Meaning"
      #   ...
      @text.split(/\r?\n/).map{|l| l.gsub(/^[{"]([^"}]*)[}"]?$/, '\1')}
    end
  end
end
