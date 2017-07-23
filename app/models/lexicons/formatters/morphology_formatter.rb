# The MorphologyFormatter wraps a morphology table generator.

module Lexicons
  module Formatters
    class MorphologyFormatter < PlainTextFormatter
      def initialize(value, opts={})
        @content_class = opts[:class]
        @content = value
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
          @content ||= @content_class.new
          @content.assign_attributes(value.permit(valid_attributes))
        else
          @content = nil
        end
      end

      def as_json
        if @content
          @content.as_json
        end
      end

      def as_html
        if @content && !@content.new_record?
          language = case @content
            when NovegradianMorphology then 'novegradian'
            when AlashianMorphology then 'alashian'
          end
          partial = "lexicons/lexicon/morphology/#{language}" +
                    "_" +
                    @content.category.to_s.pluralize
          ActionView::Base.new(Rails.configuration.paths['app/views'])
                          .extend(Lexicons::LexiconHelper)
                          .render(partial: partial, locals: { m: @content.generate! })
        end
      end
    end
  end
end
