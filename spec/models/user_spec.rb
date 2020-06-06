require 'rails_helper'

RSpec.describe User, type: :model do
  it 'User is valid with the correct attributes' do
    user = User.create(fname: 'John', lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'User is not valid when fname is nil' do
    user = User.create(fname: nil, lname: 'Doe', email: 'john.doe@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it 'User is not valid when lname is nil' do
    user = User.create(fname: 'John', lname: nil, email: 'john.doe@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it 'User is not valid when email is nil' do
    user = User.create(fname: 'John', lname: 'Doe', email: nil, password: 'password')
    expect(user).to_not be_valid
  end

  it 'User is not valid when email is not valid' do
    user = User.create(fname: 'John', lname: 'Doe', email: 'notValid', password: 'password')
    expect(user).to_not be_valid
  end

  it 'User is not valid when password is nil' do
    user = User.create(fname: 'John', lname: 'Doe', email: 'john.doe@example.com', password: nil)
    expect(user).to_not be_valid
  end

  it 'User is not valid when password is < then 5 characters' do
    user = User.create(fname: 'John', lname: 'Doe', email: 'john.doe@example.com', password: '1234')
    expect(user).to_not be_valid
  end
end
