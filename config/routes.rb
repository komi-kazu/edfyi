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

  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
