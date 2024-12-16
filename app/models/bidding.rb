class Bidding < ApplicationRecord
  belongs_to :ad, counter_cache: true
  belongs_to :company, counter_cache: true
  has_one :bidding_content, dependent: :destroy
  has_one :review, dependent: :destroy
  has_one :speciality, through: :ad
  has_one :user, through: :ad
  validates_uniqueness_of :company_id, scope: [:ad_id]

  validate :company_point

  def company_point
      return false
  end
end
