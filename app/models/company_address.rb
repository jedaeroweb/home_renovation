class CompanyAddress < ApplicationRecord
  belongs_to :company, counter_cache: true
  belongs_to :address, counter_cache: true
end
