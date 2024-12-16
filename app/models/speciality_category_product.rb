class SpecialityCategoryProduct < ApplicationRecord
  belongs_to :speciality_category, counter_cache: true
  belongs_to :product, counter_cache: true
end
