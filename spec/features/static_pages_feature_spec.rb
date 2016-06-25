require 'rails_helper'

feature 'static_pages' do
  context 'get home' do
    scenario 'should display contents' do
      visit '/'
      expect(page).to have_content 'Home Page'
    end
  end


end
