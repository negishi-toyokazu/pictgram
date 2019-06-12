class User < ApplicationRecord
  validates :name, length: { maximum: 15 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  validates :password, length: {minimum: 8, maximum: 32}

  has_secure_password

  has_many :topics
end
