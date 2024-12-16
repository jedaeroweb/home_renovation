class CompanySpeciality < ApplicationRecord
  belongs_to :company, autosave: true, counter_cache: true
  belongs_to :speciality, autosave: true, counter_cache: true
end
