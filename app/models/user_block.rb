class UserBlock < ApplicationRecord
  belongs_to :user
  belongs_to :block_user, :class_name => "User"

  validates_uniqueness_of :user , scope: [:block_user]
end
