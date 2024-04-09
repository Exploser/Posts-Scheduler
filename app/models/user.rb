class User < ApplicationRecord
  has_many :twitter_account
  has_many :tweets

  has_secure_password

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
