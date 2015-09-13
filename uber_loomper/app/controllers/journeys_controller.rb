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
  end




end
