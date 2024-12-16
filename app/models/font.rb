class Font < ApplicationRecord
  validates_presence_of :title, :font
  has_many :slide_descriptions, dependent: :destroy
end
