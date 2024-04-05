class SessionsController < ApplicationController
    # skip_before_action :verify_authenticity_token

  def new
  end

  def callback
    user_info = request.env['onmiauth.auth']
    binding.pry

    render json: user_info
  end

  def create
    user = User.find_by(email: params[:email])

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash[:alert] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out"
  end
end
