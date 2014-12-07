class CreateNovegradianLexicon < ActiveRecord::Migration
  def change
    create_table :novegradian do |t|
      t.string :word
      t.string :transliteration
      t.string :pronunciation
      t.string :part_of_speech
      t.string :root
      t.text :definition
      t.text :important_forms
      t.text :idioms
      t.text :notes
      t.text :etymology
      t.text :cognates
      t.text :inflection_structure

      t.timestamps
    end
  end
end
