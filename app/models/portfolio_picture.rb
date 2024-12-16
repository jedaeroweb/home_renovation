class PortfolioPicture < ApplicationRecord
  belongs_to :portfolio, autosave: true, counter_cache: true
  mount_uploader :picture, PortfolioPictureUploader
end
