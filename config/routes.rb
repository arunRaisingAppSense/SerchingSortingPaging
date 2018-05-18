Rails.application.routes.draw do
  resources :tutorials
  get 'tasks/index'
  get 'tasks/new'
  resources :comments
  resources :projects
  resources :students
  resources :books
  root 'projects/index'
  

  resources :clints
  resources :recipes
  resources :tasks

  #root to: 'tasks#index'
<<<<<<< HEAD
  root 'projects#index'
=======
  #root 'projects#index'
>>>>>>> c03127d6c6ba8e89873321c9b9423e8dc8b5fda4

  #get 'peoject/search'
end
	
