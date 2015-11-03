module Grammars
  module GrammarsHelper
    def example_sentence(native, translit, gloss, eng, options = {})
      gloss.gsub!(/{.*?}/) { |m| abbrev(m[1..-2]) }
      @example_index += 1 unless options[:no_increment]
      capture_haml do
        haml_tag 'table.textgloss' do
          haml_tag :tr do
            haml_tag 'td.index', "#{@example_index}#{options[:subindex]}"
            haml_tag :td do
              haml_tag 'span.native', native.html_safe
              haml_tag :br
              haml_tag 'span.translit', translit.html_safe
              haml_tag :br
              haml_tag 'span.gloss', gloss.html_safe
              haml_tag :br
              if eng.is_a? String
                haml_tag 'span.eng', "“#{eng}”".html_safe
              elsif eng.is_a? Hash
                eng.keys.each do |label|
                  haml_tag :span, "#{label}: "
                  haml_tag 'span.eng', "“#{eng[label]}”"
                  haml_tag :br unless label == eng.keys.last
                end
              end
              if options[:comment]
                haml_tag :span, options[:comment].html_safe
              end
            end
          end
        end
      end
    end

    def example_colloquialism(colloquial, colloq_translit, standard, standard_translit, eng, options = {})
      @example_index += 1 unless options[:no_increment]
      capture_haml do
        haml_tag 'table.textgloss' do
          haml_tag :td, "(#{@example_index})"
          haml_tag :td do
            haml_tag :span, "Colloquial:"
            haml_tag 'span.native', colloquial.html_safe
            haml_tag :br
            haml_tag 'span.translit', colloq_translit.html_safe
            haml_tag :br
            haml_tag :br
            haml_tag :span, "Standard:"
            haml_tag 'span.native', standard.html_safe
            haml_tag :br
            haml_tag 'span.translit', standard_translit.html_safe
            haml_tag :br
            haml_tag :br
            haml_tag 'span.eng', "“#{eng}”".html_safe
          end
        end
      end
    end
  end
end
