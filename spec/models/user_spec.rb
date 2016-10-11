require 'rails_helper'

describe User do
  let(:user) { build(:user) }

  context "can be assigned attributes" do
    it "has a first name" do
      expect(user.first_name).to eq "Jane"
    end

    it "has a last name" do
      expect(user.last_name).to eq "Doe"
    end

    it "has an email" do
      expect(user.email).to eq "jane@doe.com"
    end

    it "has a password" do
      expect(user.password).to eq "123456"
    end
  end
end

# Sample test to see that rspec works
# describe User do
#   let(:user) { User.create(first_name: "Jane",
#                             last_name: "Doe",
#                             email: "jane@doe.com",
#                             password: "123456"
#                             ) }

#   describe "attributes" do
#     it "has a first name" do
#       expect(user.first_name).to eq "Jane"
#     end
#   end
# end