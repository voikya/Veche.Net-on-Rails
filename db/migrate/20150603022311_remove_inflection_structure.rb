class RemoveInflectionStructure < ActiveRecord::Migration
  def up
    remove_column :novegradian, :inflection_structure
  end

  def down
    add_column :novegradian, :inflection_structure, :text, :after => :cognates
  end
end
