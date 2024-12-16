class Blog < ApplicationRecord
  is_impressionable
  #acts_as_taggable
  #ActsAsTaggableOn.delimiter = ','
  #ActsAsTaggableOn.force_lowercase = true
  validates_presence_of :title, :content
  validates_length_of :title, :minimum => 4, :maximum => 60
  belongs_to :user, :counter_cache => true
  belongs_to :blog_category, :autosave => true, :counter_cache => true
  has_one :blog_picture, dependent: :destroy
  has_many :blog_comment, :dependent => :destroy
  has_many :speciality_category_blogs, dependent: :destroy
  has_many :speciality_category, :through => :speciality_category_blogs

  validates :blog_picture, :presence => true, on: :create

  accepts_nested_attributes_for :blog_picture, :allow_destroy => true
  accepts_nested_attributes_for :blog_comment, :allow_destroy => true

  has_rich_text :content
end
