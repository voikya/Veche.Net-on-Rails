module SoundChanges
  class ScaController < ApplicationController
    layout 'sca'
    before_filter :set_language

    def init
      @data = {
        basePath: sca_path(:language => @language.slug),
        phonemeSet: @language.phonology
      }
    end

    def show_phoneme
      render :json => @language.phonemes.select{|p| p.symbol == params[:symbol]}.first
    end

    def show_ipa_phoneme
      render :json => SoundChanges::Phoneme.find_ipa(params[:symbol])
    end

    def show_phonology
      render :json => @language.phonology
    end

    def create_phoneme
      phoneme = SoundChanges::Phoneme.create(
        :symbol => params[:symbol],
        :language_id => @language.id
      )
      phoneme.set_features(params[:features])
      render :json => phoneme.reload
    end

    def update_phoneme
      phoneme = @language.phonemes.select{|p| p.symbol == params[:symbol]}.first
      phoneme.set_features(params[:features])
      render :json => phoneme.reload
    end

    private

    def set_language
      @language = SoundChanges::Language.find_by_slug(params[:language].to_sym)
    end
  end
end
