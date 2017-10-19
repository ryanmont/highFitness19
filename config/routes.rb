Rails.application.routes.draw do
  get 'pages/atv'

  get 'pages/motorcycle'

  get 'pages/sxs'

  get 'pages/other'

  resources :tables
  

  root to: 'tables#new'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


