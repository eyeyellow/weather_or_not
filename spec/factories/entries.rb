require 'date'

FactoryGirl.define do
  factory :entry do
    title "Watered garden"
    description "Watered the perennials and succulents"
    association :user
    association :entry_type
    date DateTime.new(2016, 10, 11)
  end
end