Rails.application.routes.draw do
  get 'messages/create'
  get 'swipes/new'
  get 'swipes/create'
  get 'swipes/edit'
  get 'swipes/update'
  get 'users/edit'
  get 'users/update'
  get 'events/show'
  get 'participants/new'
  post 'events/:id/participants/create', to: 'participants#create', as: "participants_create"
  get 'participants/edit'
  get 'participants/update'
  get 'participants/show'
  # Check out which route is for which page on figma
  # event/:id might be changed to event token later
  root to: 'pages#home'
  devise_for :users
  get 'projects/new', to: 'events#new'
  post 'projects', to: 'events#create', as: :events
  get 'projects/:id/edit', to: 'events#edit', as: :project_edit
  patch 'events/:id', to: 'events#update', as: :event
  get 'projects/:id', to: 'events#show'
  get 'projects', to: 'events#index'


  get 'events/:id/swipes', to: 'swipes#new', as: :new_swipe
  post 'events/:id/swipes', to: 'swipes#create'

  get 'reject_swipe/:id', to: 'swipes#reject', as: :reject
  get 'accept_swipe/:id', to: 'swipes#accept', as: :accept


  get 'events/:id', to: 'events#show'

  get "events/:id/profile", to: "users#edit", as: "profile"
  patch "events/:id/profile/update", to: "users#update", as: :update_user
  patch  "users/:id", to: "users#update"
  get "events/:id/swipes", to: "swipes#new", as: "swipes"
  get "events/:id/matches", to: "matches#index", as: "matches"

  get 'matches/:id', to: 'matches#show', as: :show_match
  post 'events/:id/matches', to: 'matches#create'
  get 'events/:id/matches/:match_id', to: 'matches#show', as: :chat

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  post 'events/:id/matches/:match_id', to: 'messages#create', as: :messages
end
