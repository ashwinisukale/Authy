Rails.application.routes.draw do
  resources :password_resets
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root to: 'home#profile'
  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get 'home/profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
