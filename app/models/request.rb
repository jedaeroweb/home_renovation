class Request < ApplicationRecord
  is_impressionable
  has_rich_text :content

  belongs_to :user, counter_cache: true
  belongs_to :request_category, counter_cache: true

  has_many :request_pictures, dependent: :destroy
  accepts_nested_attributes_for :request_pictures, :allow_destroy => true

  validates_presence_of :title, :content
end
