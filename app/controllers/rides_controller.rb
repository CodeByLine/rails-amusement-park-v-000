class RidesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @ride = Ride.find(params[:id])
  end

  def create

  end


end
