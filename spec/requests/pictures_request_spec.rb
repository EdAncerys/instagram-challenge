require 'rails_helper'

RSpec.describe "Pictures", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/pictures/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http redirect" do
      file = Hash.new
      get "/pictures/create", params: { picture: { name: 'Picture Description!', files: file } }
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/pictures/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/pictures/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
