class JourneysController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @journeys = @user.journeys
  end

  def new
    @user = User.find(params[:user_id])
    @journey = Journey.new
  end

  def create
    @user = User.find(params[:user_id])
    params[:user] = @user
    @journey = @user.journeys.create(journey_params)
    if @journey.save
      redirect_to @journey
    else
      redirect_to new_user_journey_path
    end
  end

  def show
    @journey = Journey.find(params[:id])
  end


private
  def journey_params
    params.require(:journey).permit!
  end

end
