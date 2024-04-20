class MainController < ApplicationController
    before_action :set_current_user

    def index
    end

    def set_current_user
        if session[:user_id]
          Current.user = User.find_by(id: session[:user_id])
        else
            redirect_to sign_in_path
        end
      end
end
