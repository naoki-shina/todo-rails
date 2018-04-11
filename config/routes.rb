Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# for board-list
  resources :user, only: [:show]
# board action
  resources :boards, only: [:index, :create, :edit, :update] do
# todo action
    resources :todos, only: [:index, :create, :update, :destroy]
  end
# search todo card
  get '/todos/search', to: 'todos#search'
# index
  root 'boards#index'
end
