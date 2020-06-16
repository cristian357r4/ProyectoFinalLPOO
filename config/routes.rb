Rails.application.routes.draw do

  resources :alimenticio_planes
  resources :grupos_alimento
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

end
