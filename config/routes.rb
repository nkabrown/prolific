Rails.application.routes.draw do

  root to: "habits#index"

  resources :habits, only: [:index, :new, :create, :edit, :update, :destroy]
  resource :session, only: [:new, :create]
  resources :mottos, only: [:new, :create, :edit, :update]

end
