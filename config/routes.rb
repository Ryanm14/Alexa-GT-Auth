Rails.application.routes.draw do
  root to: "pages#home"
  get "/show_tests" => "pages#show"
  resources :tests, only: :create
  resources :teachers, only: [:new, :create, :index]
end

