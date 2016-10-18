require 'rails_helper'

RSpec.describe "new sessions page", :type => :request do

  it "displays the user's first name after successful login" do
    user = FactoryGirl.create(:user)
    visit "/sessions/new"
    fill_in "user[email]", :with => "jane@doe.com"
    fill_in "user[password]", :with => "123456"
    click_button "Login"

    expect(page).to have_selector(".first_name", :text => "Jane")
  end

end