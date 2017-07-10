Rails.application.routes.draw do
  resources :tables
  

  root to: 'tables#new'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


