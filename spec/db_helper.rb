# frozen_string_literal: true

require_relative './../lib/query'

def clear_bookmarks
  Query.execute('TRUNCATE bookmarks', 'bookmark_manager_test')
end

def add_bookmark(title)
  # p "INSERT INTO bookmarks (url) VALUES ('#{title}');"
  Query.execute("INSERT INTO bookmarks (url) VALUES ('#{title}');", 'bookmark_manager_test')
end
