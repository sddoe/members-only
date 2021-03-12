Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :members-only, only: [:new, :create, :index]
  root "members-only#index"
end
