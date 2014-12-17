class CreateNovegradianMorphologyTable < ActiveRecord::Migration
  def change
    create_table :novegradian_morphology do |t|
      t.integer :entry_id
      t.string :category
      t.string :stem
      t.string :stem_transliterated
      t.string :desinence
      t.string :desinence_transliterated
      t.string :tertiary
      t.string :tertiary_transliterated
      t.string :group
      t.string :subgroup
      t.string :flags

      t.timestamps

      t.foreign_key :novegradian, :column => :entry_id
    end
  end
end
