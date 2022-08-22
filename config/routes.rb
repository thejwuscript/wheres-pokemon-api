Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :markers, only: [:index, :create, :destroy]
      resources :timers, only: [:index, :show, :update, :create]
      resources :rankings, only: [:index, :show, :create]
    end
  end
end
