# The RootFormatter is a slight variant of the PlainTextFormatter in that
# it can contain comma-separated tokens (for compound words that contain
# multiple roots)

module Lexicons
  module Formatters
    class RootFormatter < PlainTextFormatter
      def initialize(value)
        @content = value.present? ? value.split(',') : nil
      end

      def set(value)
        value = [*value].select { |token| token.present? }
        @content = (value.length > 0) ? value : nil
      end

      def serialize
        @content ? @content.join(',') : nil
      end

      def tokenize
        @content
      end
    end
  end
end
