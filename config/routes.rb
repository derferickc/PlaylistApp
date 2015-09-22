Rails.application.routes.draw do
  
  get 'playlists/create'
  post 'playlists' => 'playlists#create'

  get 'songs/create'
  get 'songs' => 'songs#index'
  get 'songs/:id' => 'songs#show'
  post 'songs' => 'songs#create'

  get 'users/main' => 'users#main'
  get 'users/:id' => 'users#show'
  post 'users' => 'users#create'

  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'

end
