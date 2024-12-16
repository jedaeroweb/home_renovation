class CompanyCode < ApplicationRecord
  belongs_to :company, counter_cache: true
  mount_uploader :picture, CompanyCodeUploader
end
