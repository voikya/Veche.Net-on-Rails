module Lexicons
  module LexiconHelper
    # Print a formatted slug link
    def slug(entry)
      entry.slug.gsub(/^([^0-9]*)([0-9]*)$/, '\1<sup>\2</sup>').html_safe
    end

    def form(morphology_object, method)
      m = morphology_object.send method
      if m
        %Q(#{m}<br/><span class="transliteration">#{m.transliteration}</span>).html_safe
      else
        ""
      end
    end
  end
end
