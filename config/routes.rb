Rails.application.routes.draw do

# //////////ROOT ROUTE///////////////////////
  root 'home#index'

# //////////SESSIONS ROUTES/////////////////
  get    '/login/:title', to: 'sessions#new',     as: :new_login
  post   '/login/:title', to: 'sessions#create',  as: :login
  delete '/logout',       to: 'sessions#destroy', as: :logout

# /////////RESOURCE/CRUD ROUTES/////////////
  resources :instructors
  resources :students
  resources :students_quizzes
  resources :instructors_quizzes
  resources :cohorts

end
