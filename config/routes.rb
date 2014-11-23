Rails.application.routes.draw do

  root to: "welcome#index"

  resources :habits, only: [:index, :new, :create, :edit, :update, :destroy]
  resource :session, only: [:new, :create, :destroy]
  resources :mottos, only: [:new, :create, :edit, :update, :destroy]

end
