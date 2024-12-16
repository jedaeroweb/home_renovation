class Ad < ApplicationRecord
  is_impressionable
  belongs_to :ad_category, counter_cache: true
  belongs_to :address, counter_cache: true
  belongs_to :user, counter_cache: true
  belongs_to :speciality, counter_cache: true

  has_one :ad_size, dependent: :destroy
  has_one :ad_floor, dependent: :destroy
  has_one :ad_material, dependent: :destroy
  has_one :ad_service_time, dependent: :destroy
  has_one :ad_content, dependent: :destroy
  has_many :ad_pictures, dependent: :destroy
  has_many :ad_blueprints, dependent: :destroy
  has_many :bidding, dependent: :destroy

  validates_presence_of :title, :start_date

  accepts_nested_attributes_for :ad_content, allow_destroy: true, reject_if: lambda {|attributes| attributes['content']=='건축을 이렇게 저렇게 요렇게 해주세요'+"\n"+'이건 이렇게'+"\n"+'저건 저렇게' || attributes['content']=='작업을 이렇게 저렇게 요렇게 해주세요'+"\n"+'이건 이렇게'+"\n"+'저건 저렇게' || attributes['content'].blank?}
  accepts_nested_attributes_for :ad_pictures, allow_destroy: true
  accepts_nested_attributes_for :ad_blueprints, allow_destroy: true
  accepts_nested_attributes_for :ad_size, allow_destroy: true
  accepts_nested_attributes_for :ad_floor, allow_destroy: true
  accepts_nested_attributes_for :ad_material, allow_destroy: true
  accepts_nested_attributes_for :ad_service_time, allow_destroy: true
end
