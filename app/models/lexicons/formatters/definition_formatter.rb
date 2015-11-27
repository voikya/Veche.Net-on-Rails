# The DefinitionFormatter is a special instance of RichTextFormatter that
# supports fine-grained tokenization (by comma-separated entry). It also
# is needed to support a legacy database format.

# Legacy format:
# [[entry1.1, entry1.2, entry1.3]]
# [[entry2]]
# [[{comment} entry3]]

module Lexicons
  module Formatters
    class DefinitionFormatter < RichTextFormatter
      def initialize(value)
        if value.present?
          @content = value.gsub(/(\[\[|\]\])/, '')
                          .split(/\r?\n/)
                          .reject(&:blank?)
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
          @content.reject(&:blank?)
                  .map {|v| "[[#{v}]]"}
                  .join("\n")
        end
      end

      def tokenize
        if @content
          @content.map {|c| c.gsub(/{{.*?}}/, '').gsub(/\+\+.*?\+\+/, '').split(',')}
                  .flatten
                  .map(&:strip)
                  .reject(&:blank?)
        end
      end

      # Return the first line of the definition as a summary
      def summary
        @content.first.gsub(/{{.*?}}/, '').gsub(/\+\+.*?\+\+/, '').strip
      end
    end
  end
end
