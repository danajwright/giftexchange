class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation, :user_id
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
  validates_presence_of :email, :username, :password
  validates_uniqueness_of :email

  has_many :posts
  has_many :comments

  # /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL = "danajwright@gmail.com"
  validates :email, presence: true

  validate :secure

  private

  def secure
    if email != "danajwright@gmail.com"
    errors.add(:email, "sorry about it")
    end
  end

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end