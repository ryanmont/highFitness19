Rails.application.routes.draw do

  resources :qas, :path => 'qa'

  get 'convention/venue'

  get 'convention/home'

  get 'convention/register'

  get 'convention/agenda_one'

  get 'convention/agenda_two'

  get 'convention/agenda_three'

  get 'convention/faq'

  get 'convention/sponsors'

  get 'pages/faq'

  get 'pages/congratulations'

  get 'tables/congrats'

  get 'qa/congrats'



  resources :tables
  

  root to: 'convention#home'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


