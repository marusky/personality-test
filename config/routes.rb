Rails.application.routes.draw do
  resources :answers, only: :create
  resources :questions, only: :show
  resources :users, only: :create
  delete :logout, to: 'sessions#destroy'
  get :login, to: 'pages#login'
  post :login, to: 'sessions#create'
  get :intro, to: 'pages#intro'
  get :results, to: 'pages#results'
  root "pages#home"
end
