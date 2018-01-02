Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :zombies

 devise_for :models
 root "zombies#index"
end
