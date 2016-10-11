require 'rails_helper'


# Sample test to see that rspec works
describe User do
  let(:user) { User.create(first_name: "Jane",
                            last_name: "Doe",
                            email: "jane@doe.com",
                            password: "123456"
                            ) }

  describe "attributes" do
    it "has a first name" do
      expect(user.first_name).to eq "Jane"
    end
  end
end