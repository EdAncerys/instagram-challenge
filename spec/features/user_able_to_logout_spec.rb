require 'spec_helper'

feature 'User able to log out' do
  scenario 'log out feature' do
    visit('/signup')
    fill_in 'user[fname]', with: 'John'
    fill_in 'user[lname]', with: 'Doe'
    fill_in 'user[email]', with: 'john@email.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Create Account'
  
    click_link 'Log Out'
    expect(current_path).to eq '/'
  end
end