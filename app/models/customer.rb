class Customer < ApplicationRecord
  has_many :stamp_cards
  has_many :deals, through: :stamp_cards
  has_secure_password
  validates :name, presence: true
  validates :username, uniqueness: { case_sensitive:false}
end
