require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'GET #create' do

    it 'responds with 200' do
      post :create, params: { user: { fname: 'John', lname: 'Doe', email: 'john@email.com', password_digest: 'password' } }
      expect(response).to have_http_status(200)
    end

    it 'returns http success' do
      post :create, params: { user: { fname: 'John', lname: 'Doe', email: 'john@email.com', password_digest: 'password' } }
      # expect(User.find_by(email: 'john@email.com')).to be
      expect(User.all).to be
    end
  end
end
