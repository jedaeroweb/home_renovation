class SpecialityCategoryBlog < ApplicationRecord
  belongs_to :speciality_category, counter_cache: true
  belongs_to :blog, counter_cache: true
end
