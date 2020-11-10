Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  root 'home#index'
  
  namespace :v1 do 
    resources :posts

    resources :categories do 
      resources :posts, only: [:index, :show]
    end

    resources :users do 
      resources :posts, only: [:index, :show]
    end
  end 
end
