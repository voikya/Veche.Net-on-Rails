class Download < ActiveRecord::Base
  def self.[](filename)
    where(:file => filename).first || create(:file => filename, :download_count => 0)
  end
end
