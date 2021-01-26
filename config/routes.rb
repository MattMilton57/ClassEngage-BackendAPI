Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :auth, :class_periods, only: [:create, :index, :show, :filter]
      post '/login',  to: 'auth#create'
      post '/class_periods', to: 'class_periods#create'
      post '/filter', to: 'class_periods#filter'      
      get 'profile', to: 'users#profile'
    end
  end
end