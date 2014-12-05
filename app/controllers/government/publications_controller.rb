module Government
  class PublicationsController < ApplicationController
    layout 'government'
    before_filter :set_language

    TRANSLATED = {
      :index => false,
      :anthem => false
    }

    def index
    end

    def anthem
    end

    private

    def set_language
      @language = params[:lang].to_sym
      @translation_available = TRANSLATED[params[:action].to_sym]
    end
  end
end
