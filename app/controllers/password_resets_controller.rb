class PasswordResetsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      #send email
        PasswordResetMailer.with(user: @user).reset.deliver_later  # Change to deliver_now to send the email faster
    end

    redirect_to root_path, notice: "If an account with that email was found, we have sent a link to reset your password"
  end
end
