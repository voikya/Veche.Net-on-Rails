class SetCustomLexiconCollations < ActiveRecord::Migration
  def up
    execute "ALTER TABLE `novegradian` MODIFY word VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_novegradian_ci;"
    execute "ALTER TABLE `alashian` MODIFY word VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_alashian_ci;"
    execute "ALTER TABLE `ochets` MODIFY root_word VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_ochets_ci;"
  end

  def down
    execute "ALTER TABLE `novegradian` MODIFY word VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;"
    execute "ALTER TABLE `alashian` MODIFY word VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;"
    execute "ALTER TABLE `ochets` MODIFY root_word VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci;"
  end
end
