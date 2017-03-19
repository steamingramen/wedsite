Rails.application.routes.draw do
  get 'hotels/index'

  get 'hotel/index'

  root 'home#index'

  resources :rsvp, only: [:index, :new, :create], as: 'rsvps'
  resources :registries, only: :index
  resources :photos, only: :index
  resources :faq, only: :index, as: 'faqs'
  resources :hotels, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
