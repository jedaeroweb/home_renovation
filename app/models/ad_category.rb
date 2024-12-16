class AdCategory < ApplicationRecord
  has_many :ad, :dependent=>:destroy
  validates_presence_of :title
  validates_length_of :title, :minimum => 2, :maximum => 60, :allow_blank => true
end
