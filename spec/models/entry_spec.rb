require 'rails_helper'

describe Entry do
  let(:entry) { build(:entry) }
  let(:entry_type) { build(:entry_type) }

    context "can be assigned attributes" do
    it "has a user" do
      expect(entry.user.first_name).to eq "Jane"
    end

    it "has an entry_type" do
      expect(entry.entry_type.reminder_freq).to eq 7
    end
  end
end
