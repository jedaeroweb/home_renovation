class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  has_one :reservation_content

  validates_presence_of :title, :visit_time
end
