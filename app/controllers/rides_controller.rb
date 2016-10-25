require 'pry'
class RidesController < ApplicationController

  def index
  end

  def new
    # @ride = Ride.create(
    #   :user_id => params[:user_id],
    #   :attraction_id => params[:attraction_id]
    # )
    # @message = @ride.take_ride
    # redirect_to user_path(@ride.user, :message => @message)
  end
  # binding.pry
  def create

    @user = User.find(params[:ride][:user_id])
    @ride = Ride.new(ride_params)
    message = @ride.take_ride
    redirect_to user_path(@ride.user), notice: message
  end

  def edit
  end

  def update
  end

  def show
  end


  private

    def ride_params
      params.require(:ride).permit(:user_id, :attraction_id)
    end
end
