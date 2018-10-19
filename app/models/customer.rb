class Customer < ApplicationRecord
  has_many :stamp_cards
  has_many :deals, through: :stamp_cards

  validates :name, presence: true
end
