require 'rails_helper'

feature 'User able to log in to instagram' do
  scenario 'able to log in' do
    file = File.new('/Users/ed/Projects/Makers/week8-9/instagram-challenge/instagram/app/assets/images/Entity_Relationship_Diagram.png')
    user = User.create(fname: 'Jon', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    visit('/pictures')
    click_link 'Post'
    
    fill_in 'picture[name]', with: 'Picture Description'
    attach_file 'picture[images][]', '/Users/ed/Projects/Makers/week8-9/instagram-challenge/instagram/app/assets/images/Entity_Relationship_Diagram.png'
    # Test picture upload functionality 
    click_button 'Post'

    expect(current_path).to eq '/pictures'
    expect(page).to have_content 'Picture Description'
  end
end