Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    get '/friends', to: 'user#friends', as: :friends
    get '/wall', to: 'posts#received_index', as: :wall
    get '/timeline', to: 'posts#index', as: :timeline
  end

end
