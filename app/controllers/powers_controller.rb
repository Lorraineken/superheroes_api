class PowersController < ApplicationController

  def index 
    power = Power.all 
    render json: power
  end

  def show 
    power = Power.find(params[:id])
    render json: power
  end

end
