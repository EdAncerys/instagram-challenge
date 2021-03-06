require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do # Not able to fix due argument error
    it "returns http success" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:redirect)
    end
  end

end
