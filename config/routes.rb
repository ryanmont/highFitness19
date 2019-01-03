Rails.application.routes.draw do
  get 'pages/atv'

  get 'pages/faq'

  get 'pages/congratulations'

  get 'tables/congrats'

  resources :tables
  

  root to: 'tables#new'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


