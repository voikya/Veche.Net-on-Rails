class SimplifyCrossrefTimestamps < ActiveRecord::Migration
  def up
    remove_column :novegradian_crossrefs, :updated_at
    remove_column :alashian_crossrefs, :updated_at
    remove_column :ochets_crossrefs, :updated_at
    execute <<-SQL
      ALTER TABLE novegradian_crossrefs ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP;
      ALTER TABLE alashian_crossrefs ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP;
      ALTER TABLE ochets_crossrefs ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP;
    SQL
  end

  def down
    add_column :novegradian_crossrefs, :updated_at, :timestamp, :null => false
    add_column :alashian_crossrefs, :updated_at, :timestamp, :null => false
    add_column :ochets_crossrefs, :updated_at, :timestamp, :null => false
    execute <<-SQL
      ALTER TABLE novegradian_crossrefs ALTER COLUMN created_at DROP DEFAULT;
      ALTER TABLE alashian_crossrefs ALTER COLUMN created_at DROP DEFAULT;
      ALTER TABLE ochets_crossrefs ALTER COLUMN created_at DROP DEFAULT;
    SQL
  end
end
