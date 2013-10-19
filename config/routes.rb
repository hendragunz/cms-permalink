Cms::Application.routes.draw do
  resources :credit_cards
  resources :posts

  root :to => 'posts#index'
end
