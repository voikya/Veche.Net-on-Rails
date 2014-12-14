class AddSlugToLexiconTables < ActiveRecord::Migration
  def change
    add_column :novegradian, :slug, :string, :after => :inflection_structure
    add_column :alashian, :slug, :string, :after => :etymology
    add_column :ochets, :slug, :string, :after => :etymology

    add_index :novegradian, :slug, :unique => true
    add_index :alashian, :slug, :unique => true
    add_index :ochets, :slug, :unique => true
  end
end
