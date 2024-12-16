class SimulationContent < ApplicationRecord
  belongs_to :simulation
  validates_presence_of :content
end
