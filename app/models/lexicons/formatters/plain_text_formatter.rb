# The PlainTextFormatter is the simplest formatter and the superclass of
# all other formatter types. It represented an unformatted string.

module Lexicons
  module Formatters
    class PlainTextFormatter
      # Instantiate a new formatter from the database
      def self.load(value)
        new(value || nil)
      end

      # Serialize a formatter to a string to be stored in the database
      def self.dump(obj)
        if obj
          if obj.class <= PlainTextFormatter
            obj.serialize
          else
            new(nil).tap{|f| f.set(obj)}.serialize
          end
        else
          nil
        end
      end

      # Instantiate a new formatter and deserialize a database value
      def initialize(value)
        if value.present?
          @content = value
        end
      end

      # Update a formatter with a new value
      def set(value)
        value = value.to_s
        if value.present?
          @content = value
        else
          @content = nil
        end
      end

      # Format for JSON
      def as_json
        @content
      end

      # Format for HTML
      def as_html
        @content
      end

      # Format for writing to the database
      def serialize
        @content
      end

      # Remove markup and split into tokens for searching
      def tokenize
        [@content]
      end
    end
  end
end
