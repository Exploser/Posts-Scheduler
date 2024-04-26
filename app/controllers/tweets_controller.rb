class TweetsController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_tweet, only: [:edit, :update, :destroy]

  def index
    @tweets = Current.user.tweets
  end

  def new
    logger.info "Here!"
    @tweet = Tweet.new
  end

  # TweetJob.set(wait_until: @tweet.publish_at).perform_later(@tweet)
  def create
    @tweet = Current.user.tweets.new(tweet_params)
    if @tweet.save
      TweetJob.perform_later(@tweet)
      redirect_to tweets_path, notice: "Tweet was Scheduled Successfully"
    else
      render :new
    end
  end

  # after_save_commit do
  #   if publish_at_previously_changed?
  #     TweetJob.set(wait_until: publish_at).perform_later(self)
  #   end
  # end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      TweetJob.set(wait_until: @tweet.publish_at).perform_later(@tweet)
      redirect_to tweets_path, notice: "Tweet was updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "Tweet was deleted successfully"
  end

  private

  def tweet_params
    params.require(:tweet).permit(:twitter_account_id, :body, :publish_at)
  end

  def set_tweet
    @tweet = Current.user.tweets.find(params[:id])
  end
end
