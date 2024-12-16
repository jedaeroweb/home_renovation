class UserPointLog < ApplicationRecord
  belongs_to :user, autosave: true
  belongs_to :charge_point, autosave: true
end
