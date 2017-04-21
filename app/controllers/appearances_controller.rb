class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create

    @appearance = Appearance.new(appearance_params)
    #binding.pry
    if @appearance.save
      redirect_to appearances_path
    else
      redirect_to new_appearance_path
    end
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    #binding.pry
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    redirect_to appearance_path(@appearance)
  end

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :user_id, :rating)
  end

end
