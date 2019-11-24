Rails.application.routes.draw do
  root 'db#home'
get 'db/home', to:'db#home'

resources :customers
resources :branches
resources :colors
resources :employees
resources :reservation
resources :vehicles
end
