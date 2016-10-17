require 'rails_helper'

RSpec.describe "Routing ", :type => :routing do
  context "to homepage" do
    it "routes GET /welcome to welcome#index" do
      expect(:get => "/").to route_to("welcome#index")
    end
  end
  context "to buttons on the home page" do
    it "routes GET /users/new to users#new" do
      expect(:get => "/users/new").to route_to("users#new")
    end
    it "routes GET /sessions/new to sessions#new" do
      expect(:get => "/sessions/new").to route_to("sessions#new")
    end
  end
end