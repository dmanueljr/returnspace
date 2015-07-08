require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

<<<<<<< HEAD
=======
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

>>>>>>> 64a9bc026fd69c6a2efd8756f9c4b7dac9afaf79
end
