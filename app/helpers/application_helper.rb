module ApplicationHelper
  def transliterate(word, transliteration, options = {})
    if options[:linebreak]
      "#{word}<br><i class='transliteration'>#{transliteration}</i>".html_safe
    elsif options[:callout]
      "<b>#{word}</b> <i class='transliteration'>#{transliteration}</i>".html_safe
    else
      "#{word} <i class='transliteration'>#{transliteration}</i>".html_safe
    end
  end

  alias_method :t, :transliterate

  def section(title, &block)
    case @section_context
      when :chapter
        @section_context = :section
        @section += 1
        html = capture_haml do
          haml_tag :h2, [@chapter, @section].join('.') + ' ' + title
          yield
        end
        @subsection = @subsubsection = @subsubsubsection = 0
        @section_context = :chapter
      when :section
        @section_context = :subsection
        @subsection += 1
        html = capture_haml do
          haml_tag :h3, [@chapter, @section, @subsection].join('.') + ' ' + title
          yield
        end
        @subsubsection = @subsubsubsection = 0
        @section_context = :section
      when :subsection
        @section_context = :subsubsection
        @subsubsection += 1
        html = capture_haml do
          haml_tag :h4, [@chapter, @section, @subsection, @subsubsection].join('.') + ' ' + title
          yield
        end
        @subsubsubection = 0
        @section_context = :subsection
      when :subsubsection
        @section_context = :subsubsubsection
        @subsubsubsection += 1
        html = capture_haml do
          haml_tag :h5, [@chapter, @section, @subsection, @subsubsection, @subsubsubsection].join('.') + ' ' + title
          yield
        end
        @section_context = :subsubsection
      else
        @section_context = :chapter
        @chapter += 1
        html = capture_haml do
          haml_tag :h2, "#{@chapter}. #{title}"
          yield
        end
        @section = @subsection = @subsubsection = @subsubsubsection = 0
        @section_context = nil
    end
    return html.html_safe
  end

  def footnote(&block)
    @footnote_ref_idx ||= 0
    @footnote_idx ||= 0
    if block_given?
      # Footnote text
      @footnote_idx += 1
      render :partial => "footnote", :locals => {:idx => @footnote_idx, :block => block}
    else
      # Footnote reference
      @footnote_ref_idx += 1
      render :partial => "footnote_ref", :locals => {:idx => @footnote_ref_idx}
    end
  end
end
