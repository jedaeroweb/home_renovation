class SimulationMaterialPicture < ApplicationRecord
  belongs_to :simulation_material, counter_cache: true
  mount_uploader :picture, SimulationMaterialPictureUploader
end
