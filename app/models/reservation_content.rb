class ReservationContent < ApplicationRecord
  validates_presence_of :content
  belongs_to :reservation
end
