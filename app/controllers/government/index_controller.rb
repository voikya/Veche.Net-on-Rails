module Government
  class IndexController < ApplicationController
    layout 'government'
    before_filter :set_language

    TRANSLATED = {
      :index => true,
      :about => false,
      :news => true
    }

    def index
      @news = Government::NewsArticle.random(3, :news)
      @events = Government::NewsArticle.random(2, :events)
      @weather = Government::WeatherGenerator.new
    end

    def about
    end

    def news
    end

    private

    def set_language
      @language = params[:lang].to_sym
      @translation_available = TRANSLATED[params[:action].to_sym]
    end
  end
end
