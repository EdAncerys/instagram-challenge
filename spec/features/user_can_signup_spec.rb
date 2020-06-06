require 'rails_helper'

feature 'User able ro Sign Up', type: :feature do
  scenario 'user able to navigate to sign up path' do
    visit('/')
    find_by_id('sign-up').click
    expect(current_path).to eq '/signup'
  end

  scenario 'User able to register an account' do
    visit('/signup')
    fill_in 'user[fname]', with: 'John'
    fill_in 'user[lname]', with: 'Doe'
    fill_in 'user[email]', with: 'john@email.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Create Account'

    expect(current_path).to eq '/sessions/new'
    expect(page).to have_content 'Welcome John Doe'
  end
end
