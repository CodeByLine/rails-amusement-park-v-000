class SessionsController < ApplicationController

    def new
    end

    def create
      @user = User.find_by(name: params[:user][:name])

      # if @use r && @user.authenticate(params[:user][:password])
        @session[:user_id] = @user.id
      #   redirect_to login_path
      # else
      #   redirect_to signup_path
      # end
    end

    def destroy
      session.delete :name
    end

end
