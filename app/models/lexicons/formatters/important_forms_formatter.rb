# The ImportantFormFormatters is a structured rich text field used
# to list out key morphological forms of a word. It essentially
# consists of key-value pairs, currently stored in a legacy text
# format in the database.
#
# Legacy format:
# [[Type| Metadata]]
# [[Type| form1, form2, form3 {translit1, translit2, translit3}]]
# [[Type| form4, form5, form6 {translit4, translit5, translit6}]]
# ...

module Lexicons
  module Formatters
    class ImportantFormsFormatter < RichTextFormatter
      def initialize(value)
        if value.present?
          @content = value.split(/\r?\n/).reduce([]) do |forms_array, line|
            key, _, value = line.gsub(/[\[\]]/, '').partition("|").map(&:strip)
            forms_array << { key: key, value: value }
            forms_array
          end
        else
          @content = nil
        end
      end

      # Update a formatter with a new value
      def set(value)
        if value.is_a?(Array) && value.length > 0
          @content = value
        else
          @content = nil
        end
      end

      def serialize
        if @content
          @content.map { |c| "[[#{c.key}| #{c.value}]]" }.join("\n")
        else
          nil
        end
      end

      def tokenize
        if @content
          @content.values.map do |c|
            c.gsub(/{{.*?}}/, '').gsub(/\+\+.*?\+\+/, '').split(/\p{^Word}/).select(&:present?)
          end
        end
      end
    end
  end
end
