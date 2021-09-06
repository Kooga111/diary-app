Rails.application.routes.draw do
  resources :diaryapps
  get '/users', to: 'users#index'
  get '/users/new'
end
