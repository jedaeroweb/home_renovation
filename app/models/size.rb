class Size < ApplicationRecord
  validates_presence_of :title, :size
  has_many :simulations, dependent: :destroy
  has_many :ad_sizes, dependent: :destroy
  has_many :ads, through: :ad_sizes
end
