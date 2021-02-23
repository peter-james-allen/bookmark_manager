require 'pg'

class Query
  def self.execute(query_string, db = 'bookmark_manager', user = 'peterallen')
    begin
      con = PG.connect dbname: db, user: user
      rs = con.exec query_string
    rescue PG::Error => e
      puts e.message
    ensure
      con.close if con
    end
  end
end
