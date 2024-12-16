class AdPicture < ApplicationRecord
  belongs_to :ad, autosave: true, counter_cache: true
  mount_uploader :picture, AdPictureUploader
end
