class CompanyPicture < ApplicationRecord
  belongs_to :company, counter_cache: true
  mount_uploader :picture, CompanyPictureUploader
end
