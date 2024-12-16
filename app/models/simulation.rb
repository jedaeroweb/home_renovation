class Simulation < ApplicationRecord
  validates_presence_of :title, :simulation_category
  belongs_to :simulation_category, counter_cache: true
  belongs_to :size, counter_cache: true, optional: true
  has_one :simulation_content, dependent: :destroy
  has_many :simulation_pictures, dependent: :destroy
  has_many :simulation_materials, dependent: :destroy
  accepts_nested_attributes_for :simulation_content, :allow_destroy => true
  accepts_nested_attributes_for :simulation_pictures, :allow_destroy => true
  accepts_nested_attributes_for :simulation_materials, :allow_destroy => true
end
