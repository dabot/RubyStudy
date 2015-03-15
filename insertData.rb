#! ruby -Ks
# coding: cp932

require "rubygems"
require "mysql"
require 'fastercsv'
require 'kconv'

begin
  db_connection = Mysql::new("127.0.0.1", "user", "pass", "ruby_study");
  db_file = open("db.sql").read;
  db_connection.query(db_file);

  sql_str = "INSERT INTO user (user_id, password, name) VALUES (?, ?, ?)";
  puts "insert begin";
  sql = db_connection.prepare(sql_str);


  FasterCSV.foreach("initial_data.csv", {:encoding => "SHIFT-JIS"}) do |row|

    name = row[0].kconv(Kconv::UTF8);
    user_id = row[1].kconv(Kconv::UTF8);
    password = user_id;
 		# puts "name :" + name;
 		# puts "user_id :" + user_id;

    sql.execute(user_id, password, name.kconv(Kconv::UTF8));
 	end

	puts "insert end";
ensure
	db_connection.close if db_connection;
end



