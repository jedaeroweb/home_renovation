class SimulationMaterial < ApplicationRecord
  belongs_to :simulation, counter_cache: true
  belongs_to :material, counter_cache: true

  has_many :simulation_material_pictures, dependent: :destroy
  has_many :user_simulation_materials, dependent: :destroy
  has_one :simulation_material_content, dependent: :destroy

  validates :simulation_material_pictures, :presence => true, on: :create

  accepts_nested_attributes_for :simulation_material_pictures, :allow_destroy => true
  accepts_nested_attributes_for :simulation_material_content, :allow_destroy => true
end
