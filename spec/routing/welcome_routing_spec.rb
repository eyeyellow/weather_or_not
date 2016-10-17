require 'rails_helper'

RSpec.describe "Welcome routing ", :type => :routing do
  context "to homepage" do
    it "routes GET /welcome to welcome#index" do
      expect(:get => "/").to route_to("welcome#index")
    end
  end
end