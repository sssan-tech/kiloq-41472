Rails.application.routes.draw do
  root "records#new"
  resources :records, only: [:index, :new]
end
