module Government
  class StateController < ApplicationController
    layout 'government'
    before_filter :set_language

    TRANSLATED = {
      :index => true,
      :president => true,
      :ministers => true,
      :veche => true,
      :council_nations => true,
      :judiciary => true,
      :local => false,
      :divisions => false,
      :republics => false,
      :cities => false,
      :city_map => false,
      :symbols => false,
      :geography => false,
      :travel => false,
      :holidays => false,
      :foreign_relations => false,
      :military => false,
      :elections => false
    }

    def index
    end

    def president
    end

    def ministers
    end

    def veche
    end

    def council_nations
    end

    def judiciary
    end

    def local
    end

    def divisions
    end

    def republics
    end

    def cities
    end

    def city_map
    end

    def symbols
    end

    def geography
    end

    def travel
    end

    def holidays
    end

    def foreign_relations
    end

    def military
    end

    def elections
    end

    private

    def set_language
      @language = params[:lang].to_sym
      @translation_available = TRANSLATED[params[:action].to_sym]
    end
  end
end
