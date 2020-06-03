Rails.application.routes.draw do
  resources :properties, only: %i(index show new create edit update destroy) do
    collection do
      post 'confirm'
    end
  end
  root to: 'properties#index'
end
