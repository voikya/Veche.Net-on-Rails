class RenameNewsTypeToGroup < ActiveRecord::Migration
  def change
    rename_column :news, :type, :group
  end
end
