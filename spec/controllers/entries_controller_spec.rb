require 'rails_helper'

RSpec.describe EntriesController, type: :controller do

  let(:current_user) { FactoryGirl.create(:user) }
  before { allow(controller).to receive(:current_user) { current_user } }
  let!(:entry) { FactoryGirl.create(:entry) }

  # Note: tests for Create, Update, and Delete are all 302
  # because they are all redirects (URI changed temporarily)

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

      post :create, params: { entry: {title: entry.title,
                              description: entry.description,
                              entry_type_id: entry.entry_type_id,
                              date: entry.date} }
      expect(response).to have_http_status 302
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
      patch :update, params: { id: 1, entry: {title: entry.title,
                              description: entry.description,
                              entry_type_id: entry.entry_type_id,
                              date: entry.date} }
      expect(response).to have_http_status 302
    end
  end

  describe "DELETE entries/:id" do
    it "returns http success" do
      delete :destroy, params: { id: 1 }
      expect(response).to have_http_status 302
    end
  end

end
