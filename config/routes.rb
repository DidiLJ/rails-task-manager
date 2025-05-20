Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "tasks#index"

  # get '/task/:id', to: 'tasks#show', as: :task

  # get '/new', to: 'tasks#new', as: :new
  # post '/tasks', to: 'tasks#create'

  # get '/edit/:id', to: 'tasks#edit', as: :edit
  # patch '/task/:id', to: 'tasks#update'

  # delete '/task/:id', to: 'tasks#delete'

  resources :tasks
end
