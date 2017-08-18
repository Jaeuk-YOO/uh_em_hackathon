class UserSearch < ApplicationRecord
  belongs_to :user
  has_many :parse_places
end
