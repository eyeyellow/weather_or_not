require 'rails_helper'

describe Entry do
  let(:entry) { build(:entry) }
  let(:entry_type) { build(:entry_type) }

    context "can be assigned other attributes" do
      it "has a title" do
        expect(entry.title).to eq "Watered garden"
      end
      it "has a description" do
        expect(entry.description).to eq "Watered the perennials and succulents"
      end
    end

    context "can be assigned attributes from associations" do
      it "has a user" do
        expect(entry.user.first_name).to eq "Jane"
      end

      it "has an entry_type" do
        expect(entry.entry_type.reminder_freq).to eq 7
      end

    context "can hold the date that entry was created" do
      it "displays weekday of entry creation" do
        expect(entry.date.strftime('%A')).to eq "Tuesday"
      end

      it "displays date of entry creation" do
        expect(entry.date.strftime('%D')).to eq "10/11/16"
      end
    end
  end
end
