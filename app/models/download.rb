class Download < ActiveRecord::Base
  attr_accessible :file, :download_count

  def self.[](filename)
    where(:file => filename).first || create(:file => filename, :download_count => 0)
  end
end
