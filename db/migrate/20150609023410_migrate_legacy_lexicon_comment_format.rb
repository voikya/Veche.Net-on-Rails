class MigrateLegacyLexiconCommentFormat < ActiveRecord::Migration
  def up
    Lexicons::Novegradian.all.each do |entry|
      changed = false
      [:definition, :notes, :important_forms, :etymology, :cognates].each do |field|
        if entry.send(field) && (entry.send(field).match(/(?<!\{)\{(?!\{)/) || entry.send(field).match(/(?<!\})\}(?!\})/))
          entry.send("#{field}=", entry.send(field).gsub(/(?<!\{)\{(?!\{)/, '{{').gsub(/(?<!\})\}(?!\})/, '}}'))
          changed = true
        end
      end
      entry.save! if changed
    end
    Lexicons::Alashian.all.each do |entry|
      changed = false
      [:definition, :notes, :etymology].each do |field|
        if entry.send(field) && (entry.send(field).match(/(?<!\{)\{(?!\{)/) || entry.send(field).match(/(?<!\})\}(?!\})/))
          entry.send("#{field}=", entry.send(field).gsub(/(?<!\{)\{(?!\{)/, '{{').gsub(/(?<!\})\}(?!\})/, '}}'))
          changed = true
        end
      end
      entry.save! if changed
    end
    Lexicons::Ochets.all.each do |entry|
      changed = false
      [:definition, :etymology].each do |field|
        if entry.send(field) && (entry.send(field).match(/(?<!\{)\{(?!\{)/) || entry.send(field).match(/(?<!\})\}(?!\})/))
          entry.send("#{field}=", entry.send(field).gsub(/(?<!\{)\{(?!\{)/, '{{').gsub(/(?<!\})\}(?!\})/, '}}'))
          changed = true
        end
      end
      entry.save! if changed
    end
  end

  def down
  end
end
