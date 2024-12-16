class AdAddress < ApplicationRecord
  belongs_to :ad
  belongs_to :address
end
