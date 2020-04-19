Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'contact' => 'pages#contact'
  resources :posts, only: %i[index create show new]
end
