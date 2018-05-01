# The ExampleFormatterWithoutTransliteration is a variant of ExampleFormatter
# used by languages using the Latin script
#
# Legacy format:
# Example Sentence
# "Meaning"

module Lexicons
  module Formatters
    class ExampleFormatterWithoutTransliteration < RichTextFormatter
      def initialize(value)
        if value.present?
          @content = value.split(/\r?\n/)
                          .map {|l| l.gsub(/^[{"]([^"}]*)[}"]?$/, '\1')}
                          .select(&:present?)
                          .compact
                          .each_slice(2)
                          .map do |example|
                            {
                              :example => example[0],
                              :translation => example[1]
                            }
                          end
        else
          @content = nil
        end
      end

      # Update a formatter with a new value
      def set(value)
        if value.is_a?(Array) && value.length > 0
          @content = value.reject(&:blank?)
        else
          @content = nil
        end
      end

      def serialize
        if @content
          @content.map do |ex|
            "#{ex[:example]}\n\"#{ex[:translation]}\""
          end.join("\n\n")
        end
      end

      def tokenize
        if @content
          @content.map(&:values).flatten
        end
      end
    end
  end
end
