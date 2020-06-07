require 'rails_helper'

feature 'User able to log in to instagram' do
  scenario 'able to log in' do
    user = User.create(fname: 'Jon', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    visit('/pictures')
    click_link 'Post'
    
    fill_in 'picture[name]', with: 'Picture Description'
    # Test picture upload functionality 
    click_button 'Post'

    expect(current_path).to eq '/pictures'
    expect(page).to have_content 'Picture Description'
  end
end