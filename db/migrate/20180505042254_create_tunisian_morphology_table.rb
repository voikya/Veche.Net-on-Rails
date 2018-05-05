class CreateTunisianMorphologyTable < ActiveRecord::Migration
  def change
    create_table :tunisian_morphology do |t|
      t.integer :entry_id
      t.string :category
      t.string :strong
      t.string :weak
      t.string :ablaut
      t.string :group
      t.string :subgroup
      t.string :flags

      t.timestamps

      t.foreign_key :tunisian, :column => :entry_id
    end
  end
end
