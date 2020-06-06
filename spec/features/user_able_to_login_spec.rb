require 'rails_helper'

feature 'User able to log in to instagram' do
  scenario 'able to log in' do
    user = User.create(fname: 'Jon', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    visit('/')

    expect(page).to have_content 'Welcome To Instagram'

    fill_in 'user[email]', with: 'john.doe@example.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Sign In'

    expect(current_path).to eq "/users/#{user.id}"
    expect(page).to have_content "Welcome #{user.fname} #{user.lname}"
  end
end