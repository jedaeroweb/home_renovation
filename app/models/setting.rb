class Setting < ApplicationRecord
  validates :scroll_title, presence: true, length: { maximum: 150 }
end
