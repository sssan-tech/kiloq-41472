Rails.application.routes.draw do
  root "records#new"
  resources :categories, only: [:index, :new, :create]
  resources :records, only: [:index, :new]
end
