class HeroPowersController < ApplicationController

  def create 
    hero_power = HeroPower.create!(hp_params)
    render json: hero_power
  end
 
   def hp_params
    params.permit(:strength, :hero_id, :power_id)
   end

end
