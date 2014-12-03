module Government
  class CapitalController < ApplicationController
    layout 'government'
    before_filter :set_language

    TRANSLATED = {
      :index => false,
      :divisions => false,
      :places_of_interest => false,
      :transportation => false,
      :history => false
    }

    def index
    end

    def divisions
    end

    def places_of_interest
    end

    def transportation
    end

    def history
    end

    private

    def set_language
      @language = params[:lang].to_sym
      @translation_available = TRANSLATED[params[:action].to_sym]
    end
  end
end
