require 'rails_helper'

RSpec.describe "Sessions routing ", :type => :routing do
  context "to new sessions page" do
    it "routes GET /sessions/new to page for creating new session" do
      expect(:get => "/sessions/new").to route_to("sessions#new")
    end
  end
  context "to create session" do
    it "routes POST /sessions to sessions#create" do
      expect(:post => "/sessions").to route_to("sessions#create")
    end
  end
  context "to destroy session" do
    it "routes DELETE /sessions/1 to sessions#destroy" do
      expect(:delete => "/sessions/1").to route_to("sessions#destroy", :id => "1")
    end
  end
end