module Government
  class NewsArticle < ActiveRecord::Base
    self.table_name = "news"
    attr_accessible :group, :en_headline, :en_summary, :en_article,
                    :nv_headline, :nv_summary, :nv_article

    def self.random(count, type)
      where(:group => type).order("RAND()").first(count)
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
