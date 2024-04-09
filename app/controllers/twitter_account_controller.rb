class TwitterAccountController < ApplicationController
  before_action :require_user_logged_in

  def index
    @twitter_account = Current.user.twitter_account
  end

  def destroy
    @twitter_account = Current.user.twitter_account.find(params[:id])
    @twitter_account.destroy
    redirect_to twitter_account_index_path, notice: "Successfully Deleted @#{@twitter_account.username}"
  end
end
