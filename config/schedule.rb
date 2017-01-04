every 1.day, :at => "2:00 am" do
  command "/usr/bin/pg_dump >~/veche.sql 2>/dev/null"
  command "/usr/bin/pg_dump -Fc >~/veche.fc.sql 2>/dev/null"
end

every 1.day, :at => "2:10 am" do
  rake "sql:backup", :output => nil
end
