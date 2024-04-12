class TwitterAccountController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_twitter_account, only: [:destroy]

  def index
    @twitter_account = Current.user.twitter_account
  end

  def destroy
    if @twitter_account.destroy
      redirect_to twitter_account_index_path, notice: "Successfully Deleted @#{@twitter_account.username}"
    else
      render :edit
    end
  end

  def set_twitter_account
    @twitter_account = Current.user.twitter_account.find(params[:id])
  end
end
