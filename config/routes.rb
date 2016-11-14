Rails.application.routes.draw do
  resources :sessions do
    resources :instruments
  end
  root 'sessions#index'
end
