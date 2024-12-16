class AdBlueprint < ApplicationRecord
  belongs_to :ad, counter_cache: true
  mount_uploader :picture, AdBlueprintUploader
end
