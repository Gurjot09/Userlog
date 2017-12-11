Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'login#login'
  get 'articles/your_articles'
  post 'likes/create'
  resources :users
  resources :login
  resources :articles
  resources :comments
end
