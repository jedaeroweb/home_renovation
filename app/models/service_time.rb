class ServiceTime < ApplicationRecord
  validates_presence_of :title, :time
end
