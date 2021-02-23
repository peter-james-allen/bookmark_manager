# frozen_string_literal: true

require 'pg'

class Query
  def self.execute(query_string, db = 'bookmark_manager', user = 'peterallen')
    db = 'bookmark_manager_test' if ENV['ENVIRONMENT'] == 'test'

    begin
      con = PG.connect dbname: db, user: user
      con.exec query_string
    rescue PG::Error => e
      puts e.message
    ensure
      con&.close
    end
  end
end
