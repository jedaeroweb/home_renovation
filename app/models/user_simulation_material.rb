class UserSimulationMaterial < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :simulation_material,  counter_cache: true
end
