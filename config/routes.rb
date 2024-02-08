Rails.application.routes.draw do
  resources :projects
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'welcome/index'
  root 'welcome#index'

  get 'students/test'
  # resources :students do
  #   member do
  #     get :personal_details
  #   end

  #   #collection do
  #     get :active
  #   #end
  # # use if you require only one member action use this sytex---->  get :personal_details, on: :member
  # end
  #get 'students/test'
  resources :blogs

  get 'welcome/about'
  get '/about' => 'welcome#about'

  namespace :admin do
    resources :students
  end

  # scope module: :admin do
  #   resources :students
  # end

  # scope module: 'admin', path: 'aad', as: 'cool' do
  #   resources :students
  # end
end