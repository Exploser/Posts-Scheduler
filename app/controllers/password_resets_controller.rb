class PasswordResetsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?

      #send email
        PasswordResetMailer.with(user: @user).reset.deliver_later  # Change to deliver_now to send the email faster
    end

    redirect_to root_path, notice: "If an account with that email was found, we have sent a link to reset your password"
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: "password_reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: "Expired Token"
  end
end
