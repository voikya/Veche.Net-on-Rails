class AddBaseIdToNovegradianMorphology < ActiveRecord::Migration
  def change
    add_column :novegradian_morphology, :base_id, :integer, :after => :entry_id
    add_foreign_key :novegradian_morphology, :novegradian_morphology, :column => :base_id
  end
end
