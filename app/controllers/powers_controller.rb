class PowersController < ApplicationController

  def index 
    power = Power.all 
    render json: power
  end

  def show 
    power = Power.find(params[:id])
    render json: power
  end

  def update 
    power = Power.find(params[:id])
    power.update(power_params)
    render json: power
  end

  private 

  def power_params 
    params.permit(:name, :description)
  end

end
