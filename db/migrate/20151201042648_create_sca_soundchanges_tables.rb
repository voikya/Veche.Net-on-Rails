class CreateScaSoundchangesTables < ActiveRecord::Migration
  def change
    create_table :sca_sound_change_groups do |t|
      t.string :title
      t.text :description
      t.integer :language_id
      t.integer :order
      t.timestamps

      t.foreign_key :sca_languages, :column => :language_id
    end

    create_table :sca_sound_changes do |t|
      t.string :input
      t.string :output
      t.string :environment
      t.integer :order
      t.integer :group_id
      t.timestamps

      t.foreign_key :sca_sound_change_groups, :column => :group_id
    end
  end
end
