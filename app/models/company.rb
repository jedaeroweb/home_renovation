class Company < ApplicationRecord
  is_impressionable
  has_rich_text :content

  belongs_to :user, counter_cache: true
  has_one :company_code, dependent: :destroy
  has_many :company_specialities, dependent: :destroy
  has_many :company_addresses, dependent: :destroy
  has_many :specialities, :through => :company_specialities
  has_many :company_pictures, dependent: :destroy
  has_many :portfolios, dependent: :destroy

  validates_presence_of :title, :phone
  accepts_nested_attributes_for :company_specialities, :allow_destroy => true
  accepts_nested_attributes_for :company_addresses, :allow_destroy => true
  accepts_nested_attributes_for :company_pictures, :allow_destroy => true
  accepts_nested_attributes_for :company_code, :allow_destroy => true
end
