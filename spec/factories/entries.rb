FactoryGirl.define do
  factory :entry do
    title "Watered garden"
    description "Watered the perennials and succulents"
    association :user
    association :entry_type
  end
end