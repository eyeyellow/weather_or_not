require 'rails_helper'

RSpec.describe "Routing to welcome", :type => :routing do
  it "routes GET /welcome to welcome#index" do
    expect(:get => "/").to route_to("welcome#index")
  end
  it "routes GET /users/new to users#new" do
    expect(:get => "/users/new").to route_to("users#new")
  end
  it "routes GET /sessions/new to sessions#new" do
    expect(:get => "/sessions/new").to route_to("sessions#new")
  end
end