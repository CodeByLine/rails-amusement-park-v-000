class SessionsController < ApplicationController

  def index
    redirect_to login_path unless session.include? :name
    # @user = @current_user
    # session[username] = user.name
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def login
    user = User.find_by(:name => params[user: 'name'], :id => params[user.id])
    if user && user.authenticate(params[user: 'name'], :id => params[user.id])
      session[user_id] = user.id
      redirect_to user_path
    else
      redirect_to login_path
    end
  end

    # def create
    #   @user = User.find_by(name: params[:user][:name])
    #
    #   if @user && @user.authenticate(params[:user][:password])
    #     @session[:user_id] = @user.id
    #     redirect_to user_path
    #   else
    #     redirect_to new_user_path
    #   end
    # end

    def destroy
      session.clear
      redirect_to login_path
      # session.delete :name
    end

end
