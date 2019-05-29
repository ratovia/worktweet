Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :tweets do
    resources :comments, only: [:create]
  end
  root 'welcome#index'

  # get 'users/:id' => 'users#show'
  # get 'tweets' => 'tweets#index'
  # get 'tweets/new'
  # post 'tweets' => 'tweets#create'
  # get 'tweets/:id' => 'tweets#show'
  # get 'tweets/:id/edit' => 'tweets#edit'
  # delete 'tweets/:id/destroy' => 'tweets#destroy'
  # patch 'tweets/:id' => 'tweets#update'
end
