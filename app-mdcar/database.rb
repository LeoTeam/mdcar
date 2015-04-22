require "sqlite3"

# Open a database
db = SQLite3::Database.new "app-mdcar_development.db"

# Create a database
rows = db.execute <<-SQL
  create table cars (
    name varchar(30),
    seri int,
    description varchar(30),
    image_url varchar(30)
  );
SQL
