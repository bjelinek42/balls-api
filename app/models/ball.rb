class Ball < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, length: {minimum: 2}
  validates :price, numericality: { in: 2..50 }
end
