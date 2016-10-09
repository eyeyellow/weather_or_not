class EntryType < ApplicationRecord
  has_many :entries, class_name: "Entry"
end
