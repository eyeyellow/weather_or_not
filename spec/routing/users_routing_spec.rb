require 'rails_helper'

RSpec.describe "Users routing ", :type => :routing do
  context "to new user page" do
    it "routes GET /users/new to page for creating new user" do
      expect(:get => "/users/new").to route_to("users#new")
    end
  end
end