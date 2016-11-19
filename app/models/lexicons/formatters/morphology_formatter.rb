# The MorphologyFormatter wraps a morphology table generator.

module Lexicons
  module Formatters
    class MorphologyFormatter < PlainTextFormatter
      def initialize(value, opts={})
        @content_class = opts[:class]
        @content = value || @content_class.new
      end

      def dump
        if @content
          @content.save
          @content
        else
          nil
        end
      end

      def set(value)
        if value.present?
          valid_attributes = @content_class::ATTRIBUTES
          @content.assign_attributes(value.permit(valid_attributes))
        else
          @content = nil
        end
      end

      def for_reading
        if @content && !@content.new_record?
          partial = "lexicons/lexicon/morphology/novegradian" +
                    "_" +
                    @content.category.to_s.pluralize
          ActionView::Base.new(Rails.configuration.paths['app/views'])
                          .extend(Lexicons::LexiconHelper)
                          .render(partial: partial, locals: { m: @content.generate! })
        end
      end

      def for_editing
        if @content
          @content.as_json
        end
      end
    end
  end
end
