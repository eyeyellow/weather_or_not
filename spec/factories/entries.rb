require 'date'

FactoryGirl.define do
  factory :entry do
    id 1
    title "Watered garden"
    description "Watered the perennials and succulents"
    association :user
    association :entry_type
    date DateTime.new(2016, 10, 11)
  end
end