class StampCard < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :deal

  validates :current_points, numericality: {less_than_or_equal_to: 6}
end
