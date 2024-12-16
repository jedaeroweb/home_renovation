class RequestPicture < ApplicationRecord
  belongs_to :request, counter_cache: true
  mount_uploader :picture, RequestPictureUploader
end
