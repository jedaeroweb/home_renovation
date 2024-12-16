class Answer < ApplicationRecord
  has_rich_text :content

  belongs_to :question, counter_cache: true
  belongs_to :user, counter_cache: true
  validates_presence_of :title
end
