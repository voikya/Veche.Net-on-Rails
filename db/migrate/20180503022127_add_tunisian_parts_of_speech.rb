class AddTunisianPartsOfSpeech < ActiveRecord::Migration
  def change
    add_column :tunisian, :part_of_speech_id, :integer, :after => :pronunciation

    remove_column :tunisian, :part_of_speech

    add_foreign_key :tunisian, :parts_of_speech, :column => :part_of_speech_id
  end
end
