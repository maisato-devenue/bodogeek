Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :games
  # resources :rooms
  # get 'game/:gid/rooms' => 'rooms#index', as: :game_rooms
  # get 'game/:gid/room/new' => 'rooms#new', as: :new_game_room
  # get 'game/:gid/room/:rid' => 'rooms#show', as: :game_room
  resources :games do
    resources :rooms
  end
end
