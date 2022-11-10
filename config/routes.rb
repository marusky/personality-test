Rails.application.routes.draw do
  resources :answers, only: :create
  resources :questions, only: :show
  resources :users, only: :create
  get :intro, to: 'pages#intro'
  get :results, to: 'pages#results'
  root "pages#home"
end
