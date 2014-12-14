module Lexicons
  module LexiconHelper
    # Print a formatted slug link
    def slug(entry)
      entry.slug.gsub(/^([^0-9]*)([0-9]*)$/, '\1<sup>\2</sup>').html_safe
    end
  end
end
