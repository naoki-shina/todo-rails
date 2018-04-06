Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# board action
  resources :boards, only: [:index, :new, :create, :edit, :update] do
# todo action
    resources :todos, only: [:index, :create, :update, :destroy]
  end
# index
  root 'boards#index'
end
