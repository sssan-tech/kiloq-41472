Rails.application.routes.draw do
  root "records#new"
  resources :categories, except: [:show]
  resources :records, only: [:index, :new]
end
