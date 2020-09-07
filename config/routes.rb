Rails.application.routes.draw do

root to: 'jobs#index'
devise_for :users
resources :jobs
resources :skills
resources :users, only: :show
end
