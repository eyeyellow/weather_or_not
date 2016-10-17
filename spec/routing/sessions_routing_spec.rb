require 'rails_helper'

RSpec.describe "Sessions routing ", :type => :routing do
  context "to new sessions page" do
    it "routes GET /sessions/new to page for creating new session" do
      expect(:get => "/sessions/new").to route_to("sessions#new")
    end
  end
end