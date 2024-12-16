class Alert < ApplicationRecord
  validates_presence_of :title
  has_many :community_alerts, dependent: :destroy
end
