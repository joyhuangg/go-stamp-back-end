class Customer < ApplicationRecord
  has_many :stamp_cards
  has_many :deals, through: :stamp_cards
  validates :name, presence: true
  validates :username, uniqueness: { case_sensitive:false}
  has_secure_password
end
