Rails.application.routes.draw do

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  devise_for :users
  resources :orders
  resources :line_items
  resources :categories
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
