require 'rails_helper'

feature 'static_pages' do
  context 'get home' do
    scenario 'should display contents' do
      visit '/'
      expect(page).to have_content 'Home Page'
      expect(page).to have_link 'about'
      expect(page).to have_link 'css'
    end
  end

  context 'get about page ' do
    scenario 'should display contents' do
      visit '/'
      click_link 'about'
      expect(page).to have_content 'This is about the site'
      expect(page).to have_link 'home'
      expect(page).to have_link 'css'
    end
  end

  context 'get css testing page ' do
    scenario 'should display contents' do
      visit '/'
      click_link 'css'
      expect(page).to have_content 'This shows examples of css'
      expect(page).to have_link 'home'
      expect(page).to have_link 'about'
    end

    scenario 'should reach page from about page' do
      visit '/'
      click_link 'about'
      click_link 'css'
      expect(page).to have_content 'This shows examples of css'
    end


  end
end
