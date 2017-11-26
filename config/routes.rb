Rails.application.routes.draw do
  resources :albums, only: [ :index, :create ]
  root 'albums#index'
end
