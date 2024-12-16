class Order < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :order_products, :dependent => :destroy

  accepts_nested_attributes_for :order_products, :allow_destroy => true
end
