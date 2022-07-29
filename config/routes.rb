Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/signup' => 'user#new'
  post '/users' => 'user#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get 'contacts/index'
  resources :contacts do
    resources :addresses, :phone_numbers, :emails
  end
  root to: 'user#index'
  
  get '/' => 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

=begin
Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'user/create'
  get 'user/new'
  get 'user/index'
  get 'contacts/index'
  resources :contacts do
    resources :addresses, :phone_numbers, :emails
  end
  root to: 'contacts#index'
end
=end