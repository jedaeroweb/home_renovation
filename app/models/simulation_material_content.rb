class SimulationMaterialContent < ApplicationRecord
  belongs_to :simulation_material, counter_cache: true
  validates_presence_of :content
end
