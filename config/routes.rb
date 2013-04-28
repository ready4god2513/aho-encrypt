AhoPwManager::Application.routes.draw do
  get "password/encrypt", format: :json

  devise_for :users
end