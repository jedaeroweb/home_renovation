class SpecialityCategory < ApplicationRecord
  validates_presence_of :title
  has_many :specialities, dependent: :destroy
  has_many :speciality_category_products, dependent: :destroy
  has_many :products, :through => :speciality_category_products
  has_many :speciality_category_blogs, dependent: :destroy
  has_many :blogs, :through => :speciality_category_blogs
end
