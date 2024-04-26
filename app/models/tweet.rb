class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length: { minimum: 1, maximum: 280 }
  validates :publish_at, presence: true

  after_initialize do
    self.publish_at ||= 24.hours.from_now
  end

  after_save_commit do
    if publish_at_previously_changed?
      TweetJob.set(wait_until: publish_at).perform_later(self)
    end
  end

  def published?
    tweet_id?
  end

  def publish_to_twitter!
    # Use clientDetails from the associated TwitterAccount
    client = twitter_account.clientDetails
    logger.info "Client details: #{client.inspect}"

    # Attempt to post a tweet
    tweet_data = {text: self.body}.to_json
    response = client.post("tweets", tweet_data)
    if response.success?
      update(tweet_id: response.data["id"])
      logger.info "Tweet posted successfully: #{response.inspect}"
    else
      logger.error "Failed to post tweet: #{response.error_message}"
    end

    # Optionally, retrieve user details if needed
    user = client.get("users/me")
    logger.info "User details: #{user.inspect}"
  end
end
