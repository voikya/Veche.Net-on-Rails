module Lexicons
  module Formatters
    class PartOfSpeechFormatter < PlainTextFormatter
      def initialize(value, opts={})
        @content = PartOfSpeech.find(value) if value
      end

      def set(value)
        if value.present?
          @content = PartOfSpeech.find(value[:id])
        else
          @content = nil
        end
      end

      def serialize
        @content &.id
      end

      def tokenize
        "#{@content.type} #{@content.class_membership} #{@content.form}".split(" ")
      end
    end
  end
end
