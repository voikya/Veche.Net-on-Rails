# The CrossReferenceFormatter deals with cross references, links to
# other lexicon entries.

module Lexicons
  module Formatters
    class CrossReferenceFormatter < PlainTextFormatter
      def initialize(value, opts={})
        @content_class = opts[:class]
        @content = value unless value.nil? || value.empty?
      end

      def dump
        if @content
          @content.map {|xref| xref.id}
        else
          []
        end
      end

      def set(value)
        if value.present?
          @content = value.map {|slug| @content_class.find_by_slug(slug)}
        else
          @content = nil
        end
      end

      def as_json
        if @content
          @content.map do |xref|
            {
              :slug => xref.slug,
              :summary => xref.definition.summary
            }
          end
        end
      end
    end
  end
end
