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
      phoneme = @language.phonemes.select{ |p| p.symbol == params[:symbol] }.first
      phoneme.set_features(params[:features])
      render :json => phoneme.reload
    end

    def show_rules
      render :json => @language.sound_change_groups.sort { |a,b| a[:order] <=> b[:order] }
    end

    def show_rule
      render :json => @language.sound_change_groups.where(:order => params[:order]).first
    end

    def create_rule
      group = SoundChanges::SoundChangeGroup.create(
        :title => params[:title],
        :description => params[:description],
        :order => params[:order],
        :language_id => @language.id
      )
      render :json => @language.reload.sound_change_groups
    end

    def update_rule
      group = @language.sound_change_groups.where(:order => params[:order]).first
      group.update_attributes(
        :title => params[:title],
        :description => params[:description],
        :sound_changes_attributes => params[:sound_changes] || []
      )
      render :json => group.reload
    end

    def show_change
      group = @language.sound_change_groups.where(:order => params[:rule_order]).first
      change = group.sound_changes.where(:order => params[:change_order]).first
      render :json => change.decompose.map(&:to_s)
    end

    def run
      words = params[:words].split(",")
      render :json => @language.run(*words)
    end

    private

    def set_language
      @language = SoundChanges::Language.find_by_slug(params[:language].to_sym)
    end
  end
end
