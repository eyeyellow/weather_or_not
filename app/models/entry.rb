class Entry < ApplicationRecord
  belongs_to :entry_type
  belongs_to :user
end
