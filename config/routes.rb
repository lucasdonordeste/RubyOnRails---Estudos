Rails.application.routes.draw do
  resources :meuslivros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "about-us", to: "about#index", as: :about

  get "sign_up", to: "registrations#new"

  root to: "main#index"

end
