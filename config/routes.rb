Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :auth, :class_periods, :students, :registrations, :assessments, only: [:create, :index, :show, :filter, :destroy]
      post '/login',  to: 'auth#create'
      post '/class_periods', to: 'class_periods#create'
      post '/filterCP', to: 'class_periods#filter'
      post '/filterR', to: 'registrations#filter' 
      get 'profile', to: 'users#profile'
      post '/classList', to: 'class_periods#students'
      post '/classAssessments', to: 'assessments#classAssessments'
      post '/studentAssessments', to: 'assessments#studentAssessments'
    end
  end
end