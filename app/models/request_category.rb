class RequestCategory < ApplicationRecord
  validates_presence_of :title
  has_many :requests, :dependent => :destroy
end
