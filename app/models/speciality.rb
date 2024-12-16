class Speciality < ApplicationRecord
  belongs_to :speciality_category, counter_cache: true
  has_many :company_specialities, dependent: :destroy
  has_many :companies, through: :company_specialities
  has_one :speciality_picture, dependent: :destroy
  has_many :speciality_men, dependent: :destroy
  has_many :ads, dependent: :destroy
  has_many :orders, :through => :ads

  validates_presence_of :title
  accepts_nested_attributes_for :company_specialities, allow_destroy: true
  accepts_nested_attributes_for :speciality_picture, allow_destroy: true, reject_if: lambda {|attributes| attributes['picture'].blank?}
end
