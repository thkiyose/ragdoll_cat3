Rails.application.routes.draw do
  resources :properties, only: %i(index show new create edit update destroy)
  root to: 'properties#index'
end
