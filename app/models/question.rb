class Question < ApplicationRecord
  is_impressionable
  has_rich_text :content

  belongs_to :user, counter_cache: true
  has_many :answers, dependent: :destroy

  validates_presence_of :title
end
