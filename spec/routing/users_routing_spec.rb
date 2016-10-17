require 'rails_helper'

RSpec.describe "Users routing ", :type => :routing do
  context "to new user page" do
    it "routes GET /users/new to page for creating new user" do
      expect(:get => "/users/new").to route_to("users#new")
    end
  end
  context "to create user" do
    it "routes POST /users to users#create" do
      expect(:post => "/users").to route_to("users#create")
    end
  end
  context "to show user" do
    it "routes GET /users/1 to users#show" do
      expect(:get => "/users/1").to route_to("users#show", :id => "1")
    end
  end
end