class CreateOchetsCrossrefsTable < ActiveRecord::Migration
  def change
    create_table :ochets_crossrefs, :id => false do |t|
      t.integer :from
      t.integer :to
      t.foreign_key :ochets, :column => :from
      t.foreign_key :ochets, :column => :to

      t.timestamps
    end
  end
end
