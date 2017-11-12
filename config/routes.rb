Rails.application.routes.draw do
  resources :users, only: [:show]

  devise_for :users,
             :path => 'auth',
             :path_names => {
                 :edit => 'profile'
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :offers
  get 'list', to: 'pages#list'
  get 'tags/:tag', to: 'pages#list', as: :tag
  root 'pages#home'
end
