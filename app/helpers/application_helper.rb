module ApplicationHelper
  def transliterate(word, transliteration, options = {})
    "#{word} <i class='transliteration'>#{transliteration}</i>".html_safe
  end

  alias_method :t, :transliterate
end
