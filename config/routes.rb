Rails.application.routes.draw do
  resources :properties, only: %i(index show)
end
