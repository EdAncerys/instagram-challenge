require 'rails_helper'

feature 'User Sign Up', type: :feature do
  scenario 'user able to navigate to sign up path' do
    visit('/')
    click_button 'Sign Up'
    expect(page_path).to be '/signup'
  end
end
