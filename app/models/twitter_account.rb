class TwitterAccount < ApplicationRecord
  belongs_to :user
  require "x"
  has_many :tweets, dependent: :destroy

  validates :username, uniqueness: true

  def clientDetails
    x_credentials = {
      api_key: Rails.application.credentials.dig(:twitter, :api_key),
      api_key_secret: Rails.application.credentials.dig(:twitter, :api_secret_key),
      access_token: Rails.application.credentials.dig(:twitter, :access_token),
      access_token_secret: Rails.application.credentials.dig(:twitter, :access_secret)
    }

    x_client = X::Client.new(**x_credentials)
    post = x_client.post("tweets", '{"text":"Hello, World! (from @gem)"}')
    return x_client
  end
end
