Rails.application.routes.draw do

# //////////ROOT ROUTE///////////////////////
  root 'home#index'

# //////////SESSIONS ROUTES/////////////////
  get    '/login/:title'  => 'sessions#new'
  post   '/login/:title'  => 'sessions#create'
  delete '/logout/:title' => 'sessions#destroy'

  get    '/quiz'          => 'quiz#index'

# /////////RESOURCE/CRUD ROUTES/////////////
  resources :instructors
  resources :students
  resources :quizzes

end
