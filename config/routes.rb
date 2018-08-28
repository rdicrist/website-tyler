Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get "/home/:page" => "home#show"

  root 'home#index'

  resources :events

  resources :bookings

  resources :videos

  get "/jazz" => "videos#jazz"
  get "/blues" => "videos#blues"
  get "/country" => "videos#country"
  get "/rock" => "videos#rock"

  resources :pictures

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
