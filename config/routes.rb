Rails.application.routes.draw do
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pokemons#index'
  resources :pokemons
end
