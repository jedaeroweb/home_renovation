class SpecialityPicture < ApplicationRecord
  belongs_to :speciality, autosave: true, counter_cache: true
  mount_uploader :picture, SpecialityPictureUploader
end
