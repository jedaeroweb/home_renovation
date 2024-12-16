class Material < ApplicationRecord
  validates_presence_of :title, :price
  validates :picture, :presence => true
  mount_uploader :picture, MaterialPictureUploader
end
