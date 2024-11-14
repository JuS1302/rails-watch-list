Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    resources :lists do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: [:destroy]
  end



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get '/lists', to: 'lists#index', as: :lists
  # get '/lists/new', to: 'lists#new', as: :new_list
  # get '/lists/:id', to: 'lists#show', as: :list
  # post '/lists', to: 'lists#create'
  # # get 'lists/:id/edit', to: 'lists#edit', as: :edit_list
  # # patch '/lists/:id', to: 'lists#update'
  # # delete 'lists/:id', to: 'lists#destroy'

  # get '/lists/:id/bookmarks/new', to: 'bookmarks#index', as: :lists
end
