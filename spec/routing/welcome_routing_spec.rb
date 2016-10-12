require 'rails_helper'

RSpec.describe "Routing to welcome", :type => :routing do
  it "routes GET /welcome to welcome#index" do
    expect(:get => "/").to route_to("welcome#index")
  end
end