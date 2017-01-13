require 'dotenv'

namespace :sql do
  desc "Backup SQL dump to Dropbox"
  task :backup do
    require 'dropbox'
    Dotenv.load

    client = Dropbox::Client.new(ENV['DROPBOX_API_TOKEN'])
    sql = open(ENV['SQL_DUMP'])
    fc_sql = open(ENV['SQL_DUMP_FC'])

    client.upload("/sql/veche.sql", sql, mode: :overwrite)
    client.upload("/sql/veche.fc.sql", fc_sql, mode: :overwrite)
  end
end
