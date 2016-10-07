class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    # redirect_to users_path
    # if @user.save
      redirect_to user_path
    # else
    #   redirect_to new_user_path
    # end
  end

  def edit
  end

  def update
    @user = User.find_by(:id)
    @user.update(user_params)
  end

  private

    def user_params
      params[:user][:role] ||= 0

      params.require(:user).permit(:name, :height, :nausea, :happiness, :tickets, :role)
    end

end
