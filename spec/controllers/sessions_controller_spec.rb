require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET sessions/new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "renders the new session template" do
      get :new
      expect(response).to render_template("new")
    end
  end

end
