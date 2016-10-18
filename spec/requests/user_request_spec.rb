require 'rails_helper'

RSpec.describe "new user page", :type => :request do
  context "upon correctly signing up" do
    it "displays the user's first name after successful login" do
      visit "/users/new"
      fill_in "user[first_name]", :with => "Jane"
      fill_in "user[last_name]", :with => "Doe"
      fill_in "user[email]", :with => "jane@doe.com"
      fill_in "user[password]", :with => "123456"
      fill_in "user[confirm_password]", :with => "123456"
      click_button "Sign Up"

      expect(page).to have_selector(".first_name", :text => "Jane")
    end
  end

  context "when entering a password that does not match with confirm_password" do
    it "displays an error" do
      visit "/users/new"
      fill_in "user[first_name]", :with => "Jane"
      fill_in "user[last_name]", :with => "Doe"
      fill_in "user[email]", :with => "jane@doe.com"
      fill_in "user[password]", :with => "123456"
      fill_in "user[confirm_password]", :with => "123457"
      click_button "Sign Up"

      expect(page).to have_selector(".error", :text => "Password does not match")
    end
  end
end