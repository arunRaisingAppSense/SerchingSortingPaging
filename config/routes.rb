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

<<<<<<< HEAD
  #root to: 'tasks#index'
=======


>>>>>>> 4e3137dd5dee76a2032ec13e879914b291118247
  root 'projects#index'


end
	
