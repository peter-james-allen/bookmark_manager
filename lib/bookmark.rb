require 'query'

class Bookmarks
  attr_reader :list

  def initialize
    @list = []
    db_retrieve_all
  end

  def all
    @list.join('<br>')
  end

  def db_retrieve_all
    results = Query.execute('SELECT * FROM bookmarks;')

    results.each do |row|
      @list << row['url']
    end
  end
end
