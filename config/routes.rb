Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root "note_posts#index"
  resources :note_posts
  # get "/note_posts/new", to: "note_posts#new", as: :new_note_post
  # get "/note_posts/:id", to: "note_posts#show", as: :note_post
  # patch "/note_posts/:id", to: "note_posts#update"
  # delete "/note_posts/:id", to: "note_posts#destroy"
  # get "/note_posts/:id/edit", to: "note_posts#edit", as: :edit_note_post
  # post "/note_posts", to: "note_posts#create", as: :note_posts
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "note_posts#index"
end
