Rails.application.routes.draw do
  get 'about' => 'pages#about' , as:'about'
  get 'posts/index' , as: 'home' 

  get 'welcome/index' 
  root 'posts#index'

  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
