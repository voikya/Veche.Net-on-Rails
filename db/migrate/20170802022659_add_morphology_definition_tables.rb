class AddMorphologyDefinitionTables < ActiveRecord::Migration
  def change
    create_table :morphology_definitions do |t|
      t.string :category
      t.string :group
      t.string :subgroup
      t.string :flag

      t.string :category_key
      t.string :group_key
      t.string :subgroup_key
      t.string :flag_key

      t.integer :lexicon_id

      t.foreign_key :lexicons, :column => :lexicon_id
    end
  end
end
