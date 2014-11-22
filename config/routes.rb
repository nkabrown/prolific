Rails.application.routes.draw do

  root to: "habits#index"

  resources :habits, only: [:index, :new, :create]
  resource :session, only: [:new, :create]

end
