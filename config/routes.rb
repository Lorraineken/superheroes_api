Rails.application.routes.draw do
  resources :hero_powers
  resources :powers, only: [:index, :show, :update]
  resources :heros, only: [:index, :show]
 
end
