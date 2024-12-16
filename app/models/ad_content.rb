class AdContent < ApplicationRecord
  belongs_to :ad
  validates_presence_of :content
end
