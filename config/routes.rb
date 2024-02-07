Rails.application.routes.draw do
  resources :projects
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'welcome/index'
  root 'welcome#index'

  get 'students/test'
  resources :students
  #get 'students/test'
  resources :blogs

  get 'welcome/about'
  get '/about' => 'welcome#about'
end