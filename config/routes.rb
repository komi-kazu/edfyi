Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"

  resources :articles do
    resources :article_comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users
end
