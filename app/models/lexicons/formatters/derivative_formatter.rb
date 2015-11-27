# The DerivativeFormatter contains a hash of lexemes derived from
# a shared root.
#
# Legacy format:
# [[word | transliteration | pronunciation | part of speech | definition | notes]]
# ('notes' is '*' if no content)

module Lexicons
  module Formatters
    class DerivativeFormatter < RichTextFormatter
      def initialize(value)
        if value.present?
          @content = value.split(/\r?\n/).reject(&:blank?).map do |line|
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
        else
          @content = nil
        end
      end

      def set(value)
        if value.is_a?(Array) && value.length > 0
          @content = value.reject(&:blank?)
        else
          @content = nil
        end
      end

      def serialize
        if @content
          @content.map do |v|
            "[[" + [
              v[:word],
              v[:transliteration],
              v[:pronunciation],
              v[:partOfSpeech],
              v[:definition],
              v[:notes] || '*'
            ].join(" | ") + "]]"
          end.join("\n")
        end
      end

      def tokenize
        if @content
          @content.map do |line|
            [line[:word], line[:transliteration], line[:definition].split(',').map(&:strip)]
          end.flatten
        end
      end
    end
  end
end
