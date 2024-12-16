class AdFloor < ApplicationRecord
  belongs_to :ad ,autosave: true
  belongs_to :floor, autosave: true
end
