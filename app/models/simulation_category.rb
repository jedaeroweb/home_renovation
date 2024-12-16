class SimulationCategory < ApplicationRecord
  validates_presence_of :title
  has_many :simulations, dependent: :destroy
end
