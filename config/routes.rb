Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :merchants
  resources :items, only: [:index, :show]


  resources :merchants do
    resources :items
  end
end
