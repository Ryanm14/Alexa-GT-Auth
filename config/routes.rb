Rails.application.routes.draw do
  root to: "pages#home"
  get '/show_tests', to: 'pages#show'
  resources :tests, only: :create
end

