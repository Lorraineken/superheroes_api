class HeroPowersController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :invalid_hero_powers

  def create 
    heropower = HeroPower.create!(hp_params)
    hero = heropower.hero
    render json: hero, serializer: CustomHeroShowSerializer
  end

  private
 
   def hp_params
    params.permit(:strength, :hero_id, :power_id)
   end

   def invalid_hero_powers 
    render json:{ "errors": ["validation errors"]}, status: :unprocessable_entity
   end

end
