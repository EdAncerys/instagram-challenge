require 'rails_helper'

feature 'User able to log in to instagram' do
  scenario 'able to log in' do
    user = User.create(fname: 'Jon', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    visit('/posts')
    click_link 'Post'
    
    expect(page).to have_content "Welcome #{user.fname} #{user.lname}"
  end
end