require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'GET #create' do
    it 'returns http success' do
      get :create, params: { user: { fname: 'John', lname: 'Doe', email: 'john@email.com', password_digest: 'password' } }
      expect(response).to have_http_status(:redirect)
    end
  end
end
