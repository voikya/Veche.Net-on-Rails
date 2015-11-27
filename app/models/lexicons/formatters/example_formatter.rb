# The ExampleFormatter is used to format expressions or idioms.
#
# Legacy format:
# Example Sentence
# {Transliteration}
# "Meaning"

module Lexicons
  module Formatters
    class ExampleFormatter < RichTextFormatter
      def initialize(value)
        if value.present?
          @content = value.split(/\r?\n/)
                          .map {|l| l.gsub(/^[{"]([^"}]*)[}"]?$/, '\1')}
                          .select(&:present?)
                          .compact
                          .each_slice(3)
                          .map do |example|
                            {
                              :example => example[0],
                              :transliteration => example[1],
                              :translation => example[2]
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
            "#{ex[:example]}\n{#{ex[:transliteration]}}\n\"#{ex[:translation]}\""
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
