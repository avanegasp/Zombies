Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "zombies#index"
  devise_for :users

  resources :zombies

  resources :zombies do
    resources :tweets
  end
end
