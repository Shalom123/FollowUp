Rails.application.routes.draw do
  resources :attendences
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
end
