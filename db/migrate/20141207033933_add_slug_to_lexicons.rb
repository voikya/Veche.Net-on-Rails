class AddSlugToLexicons < ActiveRecord::Migration
  def change
    add_column :lexicons, :slug, :string
  end
end
