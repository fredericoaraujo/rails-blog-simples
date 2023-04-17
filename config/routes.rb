Rails.application.routes.draw do
  route "posts#index"
  resources :posts
end
