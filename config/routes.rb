Rails.application.routes.draw do
  resources :tutorials
  get 'tasks/index'
  get 'tasks/new'
  resources :comments
  resources :projects
  resources :students
  resources :books
  #root 'projects/index'
  

  resources :clints
  resources :recipes
  resources :tasks


  root 'projects#index'


end
	
