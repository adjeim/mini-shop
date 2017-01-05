Rails.application.routes.draw do

	resources :users, :wishlists, :orders, :products

  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'

  get '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  post '/logout',  to: 'sessions#destroy'

  post '/add_to_order/:product_id', to: 'orders#add_to_order'
  post '/add_to_wishlist/:product_id', to: 'wishlists#add_to_wishlist'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end