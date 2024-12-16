class Portfolio < ApplicationRecord
  is_impressionable
  validates_presence_of :title
  belongs_to :company, counter_cache: true
  has_one :portfolio_picture, dependent: :destroy

  validates :portfolio_picture, :presence => true, on: :create
  accepts_nested_attributes_for :portfolio_picture, :allow_destroy => true

  has_rich_text :content
end
