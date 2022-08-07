Rails.application.routes.draw do
  root "contacts#index"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
  put "account", to: "users#update"
  get "account", to: "users#edit"
  delete "account", to: "users#destroy"
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
  resources :active_sessions, only: [:destroy] do
    collection do
      delete "destroy_all"
  get 'contacts/index'
  resources :contacts do
    resources :addresses, :phone_numbers, :emails
  end
    end
  end
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