Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'card_info#index'

  get 'about' => 'pages#about'

  resources :card_info
end
