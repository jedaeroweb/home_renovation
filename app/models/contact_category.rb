class ContactCategory < ApplicationRecord
  validates_presence_of :title
  has_many :contacts, :dependent => :destroy
end
