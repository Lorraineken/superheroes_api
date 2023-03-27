class HerosController < ApplicationController

  def index 
    hero =Hero.all
    render json: hero
  end

  def show 
    hero = Hero.find(params[:id])
    render json: hero, include: [:powers]
  end

end
