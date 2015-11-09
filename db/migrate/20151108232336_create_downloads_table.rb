class CreateDownloadsTable < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :file
      t.integer :download_count, :default => 0

      t.timestamps
    end
  end
end
