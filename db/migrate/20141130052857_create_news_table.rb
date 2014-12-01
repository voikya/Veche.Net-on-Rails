class CreateNewsTable < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :type
      t.string :en_headline
      t.text :en_summary
      t.text :en_article
      t.string :nv_headline
      t.text :nv_summary
      t.text :nv_article
    end
  end
end
