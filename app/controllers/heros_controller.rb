class HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :hero_not_found

  def index 
    hero =Hero.all
    render json: hero
  end

  def show 
    hero = Hero.find(params[:id])
      render json: hero, include: [:powers] 
  end

  private 

  def hero_not_found
    render json: { "error": "Hero not found"}
  end

end
