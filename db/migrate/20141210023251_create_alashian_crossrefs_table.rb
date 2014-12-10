class CreateAlashianCrossrefsTable < ActiveRecord::Migration
  def change
    create_table :alashian_crossrefs, :id => false do |t|
      t.integer :from
      t.integer :to
      t.foreign_key :alashian, :column => :from
      t.foreign_key :alashian, :column => :to

      t.timestamps
    end
  end
end
