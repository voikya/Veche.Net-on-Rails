class CreateLexiconsTable < ActiveRecord::Migration
  def change
    create_table :lexicons do |t|
      t.string :name
      t.string :lexicon_table
      t.text :alphabet
    end
  end
end
