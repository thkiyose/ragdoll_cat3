Rails.application.routes.draw do
  resources :properties, only: %i(index show)
  root to: 'properties#index'
end
