require 'bookmark'

describe Bookmarks do
  it 'returns a list of bookmarks' do
    expect(subject.list).to eq(['http://www.makersacademy.com', 'http://www.askjeeves.com', 'http://www.twitter.com',
                                'http://www.google.com'])
  end

  it 'should return a string of bookmarks' do
    expect(subject.all).to eq('http://www.makersacademy.com<br>http://www.askjeeves.com<br>http://www.twitter.com<br>http://www.google.com')
  end
end
