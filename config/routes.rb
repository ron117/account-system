Rails.application.routes.draw do
  get 'home/dashboard'

  resources :partners
  resources :partner_transcripts
  resources :transcripts
  get 'home/dashboard'
  devise_for :users
  root :to => "home#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
