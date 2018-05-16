Rails.application.routes.draw do
  resources :tutorials
  get 'tasks/index'
  get 'tasks/new'
  resources :comments
  resources :projects
  resources :students
  resources :books
  #get 'welcome/index'
  #get 'projects/:id', to: 'projects#search1'

  resources :clints
  resources :recipes
  resources :tasks

  root to: 'tasks#index'
  #root 'projects#index'

  #get 'peoject/search'
end
	