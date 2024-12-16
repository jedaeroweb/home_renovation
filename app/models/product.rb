class Product < ApplicationRecord
  is_impressionable
  belongs_to :company, counter_cache: true
  belongs_to :product_category, counter_cache: true
  has_many :product_pictures, dependent: :destroy
  has_many :speciality_category_products, dependent: :destroy
  has_many :speciality_category, :through => :speciality_category_products
  has_many :orders

  validates_presence_of :title, :price, :content
  validates :product_pictures, :presence => true
  accepts_nested_attributes_for :product_pictures, :allow_destroy => true, :reject_if => lambda { |p| p[:picture].blank? }

  has_rich_text :content
end
