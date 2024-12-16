class AdSize < ApplicationRecord
  belongs_to :ad ,autosave: true
  belongs_to :size ,autosave: true
end
