Rails.application.routes.draw do
  root 'home#index'

  resources :rsvp, only: [:index, :new, :create], as: 'rsvps'
  resources :registries, only: :index
  resources :photos, only: :index
  resources :faqs, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
