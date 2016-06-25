require 'rails_helper'

feature 'static_pages' do
  context 'get home' do
    scenario 'should display contents' do
      visit '/'
      expect(page).to have_content 'Home Page'
      expect(page).to have_link 'about'
    end
  end

  context 'get about page ' do
    scenario 'should display contents' do
      visit '/'
      click_link 'about'
      expect(page).to have_content 'This is about the site'
    end
  end
end
