Cms::Application.routes.draw do
  resources :payments

  resources :line_items

  resources :services

  resources :credit_cards
  resources :posts

  root :to => 'posts#index'
end
