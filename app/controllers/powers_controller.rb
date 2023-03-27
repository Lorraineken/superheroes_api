class PowersController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :power_record_missing

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

  def power_record_missing 
    render json: { "error": "Power not found"}
  end

end
