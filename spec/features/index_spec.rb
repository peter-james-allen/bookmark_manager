feature 'home page' do
  scenario 'displays list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.twitter.com')
  end
end
