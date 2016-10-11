require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  describe "User" do
  it "should have a first_name" do
    user = Factory.create(first_name: "Jane",
                          last_name:  "Doe",
                          email: "jane@doe.com",
                          password: "123456")
    expect(user.first_name).to eq "Jane"
  end
end
