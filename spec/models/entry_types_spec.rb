require 'rails_helper'

describe EntryType do
  let(:entry_type) { build(:entry_type) }

  it "has a name" do
    expect(entry_type.name).to eq "water succulents"
  end

  it "has a reminder_freq" do
    expect(entry_type.reminder_freq).to eq 7
  end
end