class AdMaterial < ApplicationRecord
  belongs_to :ad ,autosave: true
  belongs_to :material, autosave: true
end
