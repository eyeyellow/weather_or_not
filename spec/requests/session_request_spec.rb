require 'rails_helper'

RSpec.describe "new sessions page", :type => :request do
  context "upon correctly logging in" do
    it "displays the user's first name after successful login" do
      user = FactoryGirl.create(:user)
      visit "/sessions/new"
      fill_in "user[email]", :with => "jane@doe.com"
      fill_in "user[password]", :with => "123456"
      click_button "Login"

      expect(page).to have_selector(".first_name", :text => "Jane")
    end
  end

  context "when entering incorrect information" do
    it "displays an error for a user that does not exist" do
      user = FactoryGirl.create(:user)
      visit "/sessions/new"
      fill_in "user[email]", :with => "john@doe.com"
      fill_in "user[password]", :with => "123456"
      click_button "Login"

      expect(page).to have_selector(".error", :text => "User not found.")
    end

    it "displays an error for invalid password" do
      user = FactoryGirl.create(:user)
      visit "/sessions/new"
      fill_in "user[email]", :with => "jane@doe.com"
      fill_in "user[password]", :with => "123457"
      click_button "Login"

      expect(page).to have_selector(".error", :text => "Invalid input. Please try again.")
    end

  end
end