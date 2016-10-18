require 'rails_helper'

RSpec.describe EntriesController, type: :controller do

  let(:current_user) { FactoryGirl.create(:user) }
  before { allow(controller).to receive(:current_user) { current_user } }

  # let(:entry) { build(:entry) }

  describe "GET entries/index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "renders the entries index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET entries/new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "renders the new entry template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST entries/create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
    it "renders the create entry template" do
      post :create
      expect(response).to render_template("create")
    end
  end

  describe "GET entries/show/:id" do
    it "returns http success" do
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:success)
    end
    it "renders the show entry template" do
      get :show, params: { id: 1 }
      expect(response).to render_template("show")
    end
  end

  describe "PATCH entries/update/:id" do
    it "returns http success" do
      patch :update, params: { id: 1 }
      expect(response).to have_http_status(:success)
    end
    it "renders the update entry template" do
      patch :update, params: { id: 1 }
      expect(response).to render_template("update")
    end
  end

  describe "DELETE entries/:id" do
    it "returns http success" do
      delete :destroy, params: { id: 1 }
      expect(response).to have_http_status(:success)
    end
    it "renders the show entry template" do
      delete :destroy, params: { id: 1 }
      expect(response).to render_template("destroy")
    end
  end

end
