require 'rails_helper'

RSpec.describe Picture, type: :model do
  
  it 'Post is valid with correct attributes' do
    # file = Hash.new
    file = File.new("#{Rails.root}/app/assets/images/Entity_Relationship_Diagram.png")
    picture = Picture.create(name: 'Picture Description!', files: file)
    expect(picture).to be_valid
  end

  it 'Post is not valid when description is nil' do
    file = File.new("#{Rails.root}/app/assets/images/Entity_Relationship_Diagram.png")
    picture = Picture.create(name: nil, files: file)
    expect(picture).to_not be_valid
  end

  it 'Post is not valid when description is < 1 characters' do
    file = File.new("#{Rails.root}/app/assets/images/Entity_Relationship_Diagram.png")
    picture = Picture.create(name: '', files: file)
    expect(picture).to_not be_valid
  end

end
