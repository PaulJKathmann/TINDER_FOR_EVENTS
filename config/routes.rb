Rails.application.routes.draw do
  get 'swipes/new'
  get 'swipes/create'
  get 'swipes/edit'
  get 'swipes/update'
  get 'users/edit'
  get 'users/update'
  get 'events/show'
  get 'participants/new'
  get 'participants/create'
  get 'participants/edit'
  get 'participants/update'
  get 'participants/show'
  # Check out which route is for which page on figma
  # event/:id might be changed to event token later
  root to: 'pages#home'
  devise_for :users
  get 'projects/new', to: 'events#new'
  post 'projects', to: 'events#create', as: :events
  get 'projects/:id/edit', to: 'events#edit'
  patch 'projects/:id', to: 'events#update'
  get 'projects/:id', to: 'events#show'
  get 'projects', to: 'events#index'
  get 'events/:id', to: 'events#show'
  get "events/:id/profile", to: "users#edit", as: "profile"
  patch  "users/:id", to: "users#update"
  get "events/:id/swipes", to: "swipes#new", as: "swipes"
end
