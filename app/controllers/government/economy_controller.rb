module Government
  class EconomyController < ApplicationController
    layout 'government'
    before_filter :set_language

    TRANSLATED = {
      :index => false,
      :currency => false,
      :resources => false,
      :industries => false,
      :transportation => false,
      :highway_overview => false,
      :employment => false,
      :local_business => false,
      :foreign_business => false,
      :business_abroad => false
    }

    def index
    end

    def currency
    end

    def resources
    end

    def industries
    end

    def transportation
    end

    def highway_overview
    end

    def employment
    end

    def local_business
    end

    def foreign_business
    end

    def business_abroad
    end

    private

    def set_language
      @language = params[:lang].to_sym
      @translation_available = TRANSLATED[params[:action].to_sym]
    end
  end
end
