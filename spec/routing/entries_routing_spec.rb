require 'rails_helper'

RSpec.describe "Entries routes", :type => :routing do
  context "to entries index page" do
    it "routes GET /entries to page for viewing entries" do
      expect(:get => "/entries").to route_to("entries#index", )
    end
  end
  context "to create new entry page" do
    it "routes POST /entries to entries#create" do
      expect(:post => "/entries").to route_to("entries#create")
    end
  end
  context "to entry delete page" do
    it "routes DELETE /entries/1 to entries#destroy" do
      expect(:delete => "/entries/1").to route_to("entries#destroy", :id => "1")
    end
  end
  context "to entries update page" do
    it "routes GET /entries to page for viewing entries" do
      expect(:patch => "/entries/1").to route_to("entries#update", :id => "1")
    end
  end
  context "to entry show page" do
    it "routes GET /entries to page for viewing entries" do
      expect(:get => "/entries/1").to route_to("entries#show", :id => "1")
    end
  end
end