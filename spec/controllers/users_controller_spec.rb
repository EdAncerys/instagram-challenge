require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:redirect)
    end
  end
end
