require 'rails_helper'

RSpec.describe User, type: :model do
  it "User is valid with the correct attributes" do
    user = User.create(fname: 'John', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    expect(user).to be_valid
  end

  it "User is not valid when fname is nil" do
    user = User.create(fname: nil, lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it "User is not valid when lname is nil" do
    user = User.create(fname: 'John', lname: nil, email: 'john.doe@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it "User is not valid when eemail is nil" do
    user = User.create(fname: 'John', lname: 'Doe', email: nil, password: 'password')
    expect(user).to_not be_valid
  end
end
