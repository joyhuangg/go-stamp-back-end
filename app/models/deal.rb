class Deal < ApplicationRecord
  has_many :stamp_cards
  has_many :customers, through: :stamp_cards
end
