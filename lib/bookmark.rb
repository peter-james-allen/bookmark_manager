# frozen_string_literal: true

require_relative 'query'

class Bookmarks
  attr_reader :list

  def initialize
    @list = []
    db_retrieve_all
  end

  def all
    db_retrieve_all
    "<li>#{@list.join('</li><li>')}</li>"
  end

  def add(bookmark)
    Query.execute("INSERT INTO bookmarks (url) VALUES ('#{bookmark}');")
    db_retrieve_all
  end

  def db_retrieve_all
    @list = []
    results = Query.execute('SELECT * FROM bookmarks;')

    results.each do |row|
      @list << row['url']
    end
  end
end
