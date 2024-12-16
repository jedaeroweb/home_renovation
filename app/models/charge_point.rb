class ChargePoint < ApplicationRecord
  validates_presence_of :title, :point, :price
  validates :point, numericality: true
  validates :price, numericality: true
end
