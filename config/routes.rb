Rails.application.routes.draw do
  root 'cocktails#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new] do
    resources :doses
  end

  resources :ingredients
end
