# frozen_string_literal: true

feature 'home page' do
  scenario 'displays list of bookmarks' do
    visit '/'
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.twitter.com')
  end

  scenario 'can add a bookmark' do
    visit '/'
    fill_in('url', with: 'http//:www.test.com')
    click_button('Submit')
    expect(page).to have_content('http//:www.test.com')
  end
end
