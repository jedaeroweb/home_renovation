class SlideDescription < ApplicationRecord
  belongs_to :slide
  belongs_to :font
  validates_presence_of :description
end
