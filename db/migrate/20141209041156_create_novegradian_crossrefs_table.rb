class CreateNovegradianCrossrefsTable < ActiveRecord::Migration
  def change
    create_table :novegradian_crossrefs, :id => false do |t|
      t.integer :from
      t.integer :to
      t.foreign_key :novegradian, :column => :from
      t.foreign_key :novegradian, :column => :to

      t.timestamps
    end
  end
end
