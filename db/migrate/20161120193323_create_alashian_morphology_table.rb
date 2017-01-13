class CreateAlashianMorphologyTable < ActiveRecord::Migration
  def change
    create_table :alashian_morphology do |t|
      t.integer :entry_id
      t.string :category
      t.string :stem
      t.string :stem_transliterated
      t.string :group
      t.string :subgroup
      t.string :flags

      t.timestamps

      t.foreign_key :alashian, :column => :entry_id
    end
  end
end
