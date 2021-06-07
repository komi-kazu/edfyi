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

  resources :tags do
    get 'articles', to: 'articles#search'
  end
end
