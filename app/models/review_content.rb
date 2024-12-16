class ReviewContent < ApplicationRecord
  validates_presence_of :content
  belongs_to :review, :foreign_key => :id, inverse_of: :review_content
end
