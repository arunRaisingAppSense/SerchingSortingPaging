Rails.application.routes.draw do
  resources :comments
  resources :projects
  resources :students
  resources :books
  get 'projects/index'
  

  resources :clints
  resources :recipes

  #root 'students#index'

  # resources :users, only: [:index]
  # root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	
