# frozen_string_literal: true

require 'bookmark'
require 'db_helper'

BOOKMARKS = ['http://www.makersacademy.com', 'http://www.askjeeves.com', 'http://www.twitter.com',
             'http://www.google.com'].freeze

describe Bookmarks do
  before(:each) { clear_bookmarks }

  it 'returns a list of bookmarks' do
    BOOKMARKS.each { |bookmark| subject.add(bookmark) }
    expect(subject.list).to eq(BOOKMARKS)
  end

  it 'should return a html list of bookmarks' do
    BOOKMARKS.each { |bookmark| subject.add(bookmark) }
    expect(subject.all).to eq('<li>http://www.makersacademy.com</li><li>http://www.askjeeves.com</li><li>http://www.twitter.com</li><li>http://www.google.com</li>')
  end
end
