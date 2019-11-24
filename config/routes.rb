Rails.application.routes.draw do
  root 'db#home'
get 'db/home', to:'db#home'

resources :customers
end
