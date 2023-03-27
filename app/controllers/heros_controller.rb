class HerosController < ApplicationController

  def index 
    hero =Hero.all
    render json: hero
  end

end
