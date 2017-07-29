class CreateCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :character
      t.integer :primary_order
      t.integer :secondary_order
      t.integer :tertiary_order
      t.boolean :canonical, :default => false
      t.integer :lexicon_id

      t.foreign_key :lexicons, :column => :lexicon_id
    end

    remove_column :lexicons, :alphabet
  end
end
