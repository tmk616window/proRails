Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :test, only: %i[index]
      resources :tasks, only: [:index, :show, :create, :update, :destroy]
      resources :prolongs, only: [:index, :show,  :create, :destroy]
      resources :tools, only: [:index, :show, :create, :destroy]
      resources :contents, only: [:index, :show, :update, :create, :destroy]
      resources :comments, only: [:index, :show, :update, :create, :destroy]
      resources :upro_langs, only: [:index, :show, :update, :create, :destroy]      
      resources :likes, only: [:index, :show, :create, :destroy]      
      resources :users, only: [:index, :show, :update]      
      resources :tposts, only: %i[index create destroy]
      resources :chat_messages, only: [:index, :show, :create, :destroy]      

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: %i[index]
      end
    end
  end
end
