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

    CURRENCY_CONVERSION_XML = "http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml"
    NVM_PER_EUR = 6.4520

    def index
    end

    def currency
      begin
        xml_data = Net::HTTP.get_response(URI.parse(CURRENCY_CONVERSION_XML)).body
        xml = Nokogiri::XML(xml_data)
        @date = DateTime.parse(xml.xpath("//xmlns:Cube[@time]/@time").first.value)

        usd_per_eur = xml.xpath("//xmlns:Cube[@currency='USD']/@rate").first.value.to_f
        gbp_per_eur = xml.xpath("//xmlns:Cube[@currency='GBP']/@rate").first.value.to_f
        rub_per_eur = xml.xpath("//xmlns:Cube[@currency='RUB']/@rate").first.value.to_f
        jpy_per_eur = xml.xpath("//xmlns:Cube[@currency='JPY']/@rate").first.value.to_f
        chf_per_eur = xml.xpath("//xmlns:Cube[@currency='CHF']/@rate").first.value.to_f
        sek_per_eur = xml.xpath("//xmlns:Cube[@currency='SEK']/@rate").first.value.to_f

        @conversions = {}
        @conversions[:eur_per_nvm] = 1 / NVM_PER_EUR
        @conversions[:nvm_per_eur] = NVM_PER_EUR
        @conversions[:usd_per_nvm] = usd_per_eur / NVM_PER_EUR
        @conversions[:nvm_per_usd] = NVM_PER_EUR / usd_per_eur
        @conversions[:gbp_per_nvm] = gbp_per_eur / NVM_PER_EUR
        @conversions[:nvm_per_gbp] = NVM_PER_EUR / gbp_per_eur
        @conversions[:rub_per_nvm] = rub_per_eur / NVM_PER_EUR
        @conversions[:nvm_per_rub] = NVM_PER_EUR / rub_per_eur
        @conversions[:jpy_per_nvm] = jpy_per_eur / NVM_PER_EUR
        @conversions[:nvm_per_jpy] = NVM_PER_EUR / jpy_per_eur
        @conversions[:chf_per_nvm] = chf_per_eur / NVM_PER_EUR
        @conversions[:nvm_per_chf] = NVM_PER_EUR / chf_per_eur
        @conversions[:sek_per_nvm] = sek_per_eur / NVM_PER_EUR
        @conversions[:nvm_per_sek] = NVM_PER_EUR / sek_per_eur
      rescue
        @error = true
      end
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
