Rails.application.routes.draw do
  resources :properties, only: %i(index show new create)
  root to: 'properties#index'
end
