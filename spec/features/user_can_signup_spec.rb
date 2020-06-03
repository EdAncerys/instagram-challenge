require 'rails_helper'

feature 'User can reach Sign Up path', type: :feature do
  scenario 'user able to navigate to sign up path' do
    visit('/')
    click_link 'Sign Up'
    expect(current_path).to eq '/signup'
  end
end
