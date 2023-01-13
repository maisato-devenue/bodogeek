Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'index' => 'games#index'
  resources :games
  resources :rooms
  # get 'games' => 'games#index'
  # get 'games/:title' => 'games#show'
  # get 'games/new' => 'games#new'
  get 'game/:id/rooms' => 'rooms#index', as: :game_rooms
end
