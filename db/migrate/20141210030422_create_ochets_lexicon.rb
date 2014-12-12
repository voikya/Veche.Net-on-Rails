class CreateOchetsLexicon < ActiveRecord::Migration
  def change
    create_table :ochets do |t|
      t.string :root_word
      t.string :root_transliteration
      t.string :ext_root
      t.string :ext_root_transliteration
      t.text :definition
      t.text :derivatives
      t.text :idioms
      t.text :etymology

      t.timestamps
    end
  end
end
