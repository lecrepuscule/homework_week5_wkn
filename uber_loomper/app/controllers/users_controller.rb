class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(user_journeys_path(@user.id))
    else
      render :new
    end
  end

  def show_user_journeys
    @user = User.find(params[:id])
    @journeys = @user.journeys
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit!
  end

end
