class SimulationPicture < ApplicationRecord
  belongs_to :simulation, counter_cache: true
  mount_uploader :picture, SimulationPictureUploader
end
