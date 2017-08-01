class CreatePartsOfSpeechTable < ActiveRecord::Migration
  def change
    create_table :parts_of_speech do |t|
      t.string :type
      t.string :class_membership
      t.string :form
      t.integer :lexicon_id

      t.foreign_key :lexicons, :column => :lexicon_id
    end

    add_column :novegradian, :part_of_speech_id, :integer, :after => :pronunciation
    add_column :alashian, :part_of_speech_id, :integer, :after => :pronunciation

    remove_column :novegradian, :part_of_speech
    remove_column :alashian, :part_of_speech

    add_foreign_key :novegradian, :parts_of_speech, :column => :part_of_speech_id
    add_foreign_key :alashian, :parts_of_speech, :column => :part_of_speech_id
  end
end
