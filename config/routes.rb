Rails.application.routes.draw do
  root 'db#home'
get 'db/home', to:'db#home'


get 'queryone/', to:'queryone#show'
get 'querytwo/', to:'querytwo#show'
get 'querythree/', to:'querythree#show'
get 'queryfour/', to:'queryfour#show'
get 'queryfive/', to:'queryfive#show'
get 'querysix/', to:'querysix#show'
get 'queryseven/', to:'queryseven#show'
get 'queryeight/', to:'queryeight#show'
get 'querynine/', to:'querynine#show'
get 'queryten/', to:'queryten#show'

resources :customers
resources :branches
resources :colors
resources :employees
resources :reservations
resources :vehicles
end
