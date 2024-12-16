class Address < ActiveRecord::Base
  validates_presence_of :title
  has_many :addresses, dependent: :destroy, :foreign_key =>:parent_address_id
  has_many :ads, dependent: :destroy
  has_many :company_addresses, dependent: :destroy
  belongs_to :address,  :foreign_key =>:parent_address_id, optional: true
  belongs_to :address_level, counter_cache: true
end
