class Contact < ApplicationRecord
  belongs_to :user, counter_cache: true, optional: true
  belongs_to :contact_category, counter_cache: true

  validates_presence_of :title

  has_one :contact_content, :foreign_key => :id, :dependent => :destroy, inverse_of: :contact
  validates :contact_content, :presence => true
  accepts_nested_attributes_for :contact_content, :allow_destroy => true, :update_only => true

  def contact_content
    super || build_contact_content
  end
end
