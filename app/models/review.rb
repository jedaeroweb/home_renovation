class Review < ApplicationRecord
  is_impressionable
  validates_presence_of :title
  belongs_to :bidding, counter_cache: true
  has_one :company, :through => :bidding
  has_one :user, :through => :bidding
  has_one :review_content, :foreign_key => :id, :dependent => :destroy, inverse_of: :review
  validates :review_content, :presence => true
  accepts_nested_attributes_for :review_content, :allow_destroy => true, :update_only => true

  def review_content
    super || build_review_content
  end
end
