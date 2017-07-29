class AddWeightToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :weight, :integer, :after => :canonical, :default => 1
  end
end
