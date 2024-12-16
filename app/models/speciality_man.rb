class SpecialityMan < ApplicationRecord
  belongs_to :speciality, counter_cache: true
  validates_presence_of :title, :pay
end
