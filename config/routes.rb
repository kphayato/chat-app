Rails.application.routes.draw do
  get 'messages/index'
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "messages#index"
end
