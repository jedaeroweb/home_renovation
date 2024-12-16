class OrderPayment < ApplicationRecord
  belongs_to :order, counter_cache: true
  belongs_to :payment
end
