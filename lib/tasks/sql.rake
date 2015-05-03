require 'dotenv'

namespace :sql do
  desc "Backup SQL dump to Dropbox"
  task :backup do
    require 'dropbox_sdk'
    Dotenv.load
    token = ENV['DROPBOX_API_TOKEN']
    client = DropboxClient.new(token)
    sql = open(ENV['SQL_DUMP'])
    client.put_file "/sql/veche.sql", sql, true
  end
end
