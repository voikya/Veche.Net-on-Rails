class CreateAlashianLexicon < ActiveRecord::Migration
  def change
    create_table :alashian do |t|
      t.string :word
      t.string :transliteration
      t.string :pronunciation
      t.string :part_of_speech
      t.string :root
      t.text :definition
      t.text :idioms
      t.text :notes
      t.text :etymology

      t.timestamps
    end
  end
end
