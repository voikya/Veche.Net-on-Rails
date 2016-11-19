# The RichTextFormatter accepts basic markup that is converted to the
# appropriate form on the front end. These consist of:
# {{text}} - commentary (italicized, excluded from search)
# ++slug++ - cross reference (link to another entry)
#
# They also support multiple paragraphs.

module Lexicons
  module Formatters
    class RichTextFormatter < PlainTextFormatter
      def initialize(value)
        if value.present?
          @content = value.split(/\r?\n/).reject(&:blank?)
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
        @content && @content.join("\n\n")
      end

      def tokenize
        if @content
          @content.map do |c|
            c.gsub(/{{.*?}}/, '').gsub(/\+\+.*?\+\+/, '')
          end
        end
      end
    end
  end
end
