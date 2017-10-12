Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index", as: :welcome

  resources :home, only:[:index]
  resources :topics
  
  namespace :admins do 
    resources :home, only:[:index]
    resources :topics
    root to: "home#index"
  end
end
