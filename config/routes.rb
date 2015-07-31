Rails.application.routes.draw do
  
  devise_for :lecturers
  devise_for :classrepresentatives
  root 'person#index'

  get 'attendences/new'

  get 'person/supervisor'

  get 'person/classrepresentative'

  get 'person/lecturer'
  


































  resources :attendences
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
end
