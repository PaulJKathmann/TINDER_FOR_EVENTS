Rails.application.routes.draw do
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

  get 'events/:id/swipes', to: 'swipes#new'
  post 'events/:id/swipes', to: 'swipes#create'

  get 'reject_swipe/:id', to: 'swipes#reject', as: :reject
  get 'accept_swipe/:id', to: 'swipes#accept', as: :accept

end
