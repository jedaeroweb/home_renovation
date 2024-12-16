class Slide < ApplicationRecord
  belongs_to :notice, optional: true
  has_one :slide_description, dependent: :destroy
  validates_presence_of :title,:picture
  accepts_nested_attributes_for :slide_description, :allow_destroy => true, reject_if: lambda {|attributes| attributes['description'].blank?}
  mount_uploader :picture, SlidePictureUploader
end
