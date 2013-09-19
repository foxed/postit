PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :categories, only: [:new, :create, :show]
  
  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
  end

  resources :post_categories
  resources :users
# ??? look at vid
 
end
