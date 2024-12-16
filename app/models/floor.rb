class Floor < ApplicationRecord
  validates_presence_of :title
  has_many :simulations, dependent: :destroy
  has_many :ad_floors, dependent: :destroy
  has_many :ads, through: :ad_floors
end
