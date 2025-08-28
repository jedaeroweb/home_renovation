class User < ApplicationRecord
  include OmniauthAttributesConcern
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable, omniauth_providers: [:kakao, :naver, :facebook, :twitter, :apple, :google_oauth2]

  before_create :default_values
  has_many :ads, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :user_authentications, dependent: :destroy
  has_one :user_address, dependent: :destroy
  has_one :user_picture, dependent: :destroy
  has_one :user_content, dependent: :destroy
  has_one :company, dependent: :destroy

  validates_presence_of :email
  validates_length_of :email, within: 4..40
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_uniqueness_of :email
  validates_length_of :name, within: 0..60, allow_blank: true
  validates_length_of :password, :within => 5..255, allow_blank: true

  accepts_nested_attributes_for :user_content, allow_destroy: true
  accepts_nested_attributes_for :user_picture, allow_destroy: true
  accepts_nested_attributes_for :user_address, allow_destroy: true
  accepts_nested_attributes_for :user_authentications, allow_destroy: true

  def self.create_from_omniauth(params)
    self.__send__(params.provider, params)
  end

  def remember_me
    super || false
  end

  private

  def default_values
    self.name ||= '#'+SecureRandom.uuid
  end
end
