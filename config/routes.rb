Rails.application.routes.draw do
  devise_for :users



  root to: "home#top"

   authenticated :user do
   root 'users#show', as: :user_root
  end

  devise_scope :user do
  # 未認証のユーザーがアクセスできるルートを定義
  get '/unauthenticated', to: 'unauthenticated#action'
end
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  get 'home/about' , as: :about
  get '/' =>'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
