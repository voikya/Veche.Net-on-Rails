class CreateScaPhonemeTables < ActiveRecord::Migration
  def change
    create_table :sca_languages do |t|
      t.integer :parent_id
      t.string :name
      t.text :description
      t.string :slug
      t.timestamps

      t.foreign_key :sca_languages, :column => :parent_id
    end

    create_table :sca_features do |t|
      t.string :name
      t.text :description
      t.boolean :boolean, :default => false
      t.string :affects
      t.timestamps
    end

    create_table :sca_phonemes do |t|
      t.string :symbol
      t.integer :language_id
      t.timestamps

      t.foreign_key :sca_languages, :column => :language_id
    end

    create_table :sca_phoneme_features do |t|
      t.integer :phoneme_id
      t.integer :feature_id
      t.boolean :value, :default => false
      t.string :custom_value
      t.timestamps

      t.foreign_key :sca_phonemes, :column => :phoneme_id
      t.foreign_key :sca_features, :column => :feature_id
    end
  end
end
