Rails.application.routes.draw do
  devise_for :users
  
  
  
  root to: "homes#top"
  
   authenticated :user do
   root 'users#show', as: :user_root
  end
  
  devise_scope :user do
  # 未認証のユーザーがアクセスできるルートを定義
  get '/unauthenticated', to: 'unauthenticated#action'
end
  
  resources :books, only: [:new, :index, :show ,:create]
  resources :users, only: [:show, :edit, :index]
  
  get 'homes/about' , as: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
