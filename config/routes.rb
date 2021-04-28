Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :auth, :class_periods, :students, :registrations, :assessments, only: [:create, :index, :show, :filter, :destroy]
      post '/login',  to: 'auth#create'
      post '/class_periods', to: 'class_periods#create'
      post '/filterCP', to: 'class_periods#filter'
      post '/filterR', to: 'registrations#filter' 
      post '/classList', to: 'class_periods#students'
      post '/classAssessments', to: 'assessments#classAssessments'
      post '/studentAssessments', to: 'assessments#studentAssessments'
      post '/deleteStudentAssessments', to: 'assessments#deleteStudentAssessments'
      post '/deleteStudentRegistrations', to: 'registrations#deleteStudentRegistrations'

      get 'profile', to: 'users#profile'
      get '/current_user', to: 'auth#show'
      get '/current_student/:id',  to: 'students#show'
    end
  end
end