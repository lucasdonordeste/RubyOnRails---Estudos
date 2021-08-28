Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "about-us", to: "about#index", as: :about


  root to: "main#index"

end
