Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"

  resources :posts do
    resources :article_comments, only: :create
  end
  resources :users
end
