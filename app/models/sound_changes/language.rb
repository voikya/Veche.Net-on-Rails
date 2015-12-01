module SoundChanges
  class Language < ActiveRecord::Base
    self.table_name = 'sca_languages'

    has_many :phonemes, :class_name => SoundChanges::Phoneme
    belongs_to :parent, :class_name => SoundChanges::Language

    def phonology
      phonemes = self.phonemes.to_a
      nasals, phonemes = phonemes.partition(&:nasal?)
      plosives, phonemes = phonemes.partition(&:plosive?)
      fricatives, phonemes = phonemes.partition(&:fricative?)
      affricates, phonemes = phonemes.partition(&:affricate?)
      liquids, phonemes = phonemes.partition(&:liquid?)
      glides, phonemes = phonemes.partition(&:glide?)
      diphthongs, phonemes = phonemes.partition(&:diphthong?)
      vowels, phonemes = phonemes.partition(&:vocalic?)
      other = phonemes

      {
        :plosives   => plosives.sort.map(&:symbol),
        :fricatives => fricatives.sort.map(&:symbol),
        :affricates => affricates.sort.map(&:symbol),
        :nasals     => nasals.sort.map(&:symbol),
        :liquids    => liquids.sort.map(&:symbol),
        :glides     => glides.sort.map(&:symbol),
        :vowels     => vowels.sort.map(&:symbol),
        :diphthongs => diphthongs.sort.map(&:symbol),
        :other      => other.sort.map(&:symbol)
      }
    end
  end
end
