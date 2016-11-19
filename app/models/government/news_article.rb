module Government
  class NewsArticle < ActiveRecord::Base
    self.table_name = "news"

    def self.random(count, type)
      where(:group => type).order("RANDOM()").first(count)
    end

    def headline
      send "#{@language}_headline".to_sym
    end

    def summary
      send "#{@language}_summary".to_sym
    end

    def article
      send("#{@language}_article".to_sym).html_safe
    end

    def set_language(lang)
      @language = lang
    end
  end
end
