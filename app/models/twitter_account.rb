class TwitterAccount < ApplicationRecord
  belongs_to :user
  require "x"
  has_many :tweets

  validates :username, uniqueness: true

  def client
    x_credentials = {
    api_key: Rails.application.credentials.dig(:twitter, :api_key),
    api_key_secret: Rails.application.credentials.dig(:twitter, :api_secret_key),
    access_token: token,
    access_token_secret: secret
    }
    X::Client.new(**x_credentials)
  end
end
