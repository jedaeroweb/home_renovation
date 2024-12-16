class Payment < ApplicationRecord
  validates_presence_of :title, :payment_id, :payment_merchant_id,  :payment_method, :amount, :status
end
