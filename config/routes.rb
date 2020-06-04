Rails.application.routes.draw do
  root to: 'properties#index'
  resources :properties, only: %i(index show new create edit update destroy) do
    collection do
      post 'confirm'
    end
  end
end
