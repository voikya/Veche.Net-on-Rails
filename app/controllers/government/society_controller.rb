module Government
  class SocietyController < ApplicationController
    layout 'government'
    before_filter :set_language

    TRANSLATED = {
      :index => false,
      :history => false,
      :population => false,
      :healthcare => false,
      :law_enforcement => false,
      :education => false,
      :culture => false,
      :religion => false,
      :language => false,
      :finland => false,
      :estonia => false,
      :latvia => false,
      :karelia => false,
      :komi => false
    }

    def index
    end

    def history
    end

    def population
    end

    def healthcare
    end

    def law_enforcement
    end

    def education
    end

    def culture
    end

    def religion
    end

    def language
    end

    def finland
    end

    def estonia
    end

    def latvia
    end

    def karelia
    end

    def komi
    end

    private

    def set_language
      @language = params[:lang].to_sym
      @translation_available = TRANSLATED[params[:action].to_sym]
    end
  end
end
