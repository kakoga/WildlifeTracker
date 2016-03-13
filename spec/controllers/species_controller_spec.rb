require 'rails_helper'

RSpec.describe SpeciesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
    it "creates a species" do
      # protect yourself from test leakage. make sure that you are creating it this time
      expect(Species.first).to be(nil)
      post :create, name: 'Tiger'
      expect(Species.first).to be_a(Species)
      expect(Species.first.name).to eq('Tiger')
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      delete :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      patch :update
      expect(response).to have_http_status(:success)
    end
  end

end
