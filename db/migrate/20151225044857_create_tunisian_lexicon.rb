class CreateTunisianLexicon < ActiveRecord::Migration
  def up
    create_table :tunisian do |t|
      t.string :word
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
      t.string :slug

      t.timestamps
    end

    create_table :tunisian_crossrefs, :id => false do |t|
      t.integer :from
      t.integer :to
      t.foreign_key :tunisian, :column => :from
      t.foreign_key :tunisian, :column => :to
      t.datetime :created_at
    end

    execute <<-SQL
      ALTER TABLE tunisian_crossrefs ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP;
    SQL

    add_index :tunisian, :slug, :unique => true
  end

  def down
    drop_table :tunisian_crossrefs
    drop_table :tunisian
  end
end
