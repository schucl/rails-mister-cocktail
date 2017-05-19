Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:show]
  root to: 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"
end


