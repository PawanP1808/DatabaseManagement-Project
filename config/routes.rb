Rails.application.routes.draw do
  root 'db#home'
get 'db/home', to:'db#home'

get 'customers/1', to:'customers#show'

resources :customers
resources :branches
resources :colors
resources :employees
resources :reservations
resources :vehicles
end
