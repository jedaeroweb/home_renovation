class NoticePicture < ApplicationRecord
  belongs_to :notice, counter_cache: true
  mount_uploader :picture, NoticePictureUploader
end
