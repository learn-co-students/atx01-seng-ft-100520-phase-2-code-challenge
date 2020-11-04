Rails.application.routes.draw do
  get 'appearances/new'

  get 'appearances/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :appearances
end
