Rails.application.routes.draw do

  resources :gurus
  resources :prizes
  resources :picks do
    collection { post :import}
  end

  
  resources :surveys
  resources :votes
  resources :scaffolds
  resources :choreo_regs


  resources :qas, :path => 'qa'

  get 'convention/venue'

  get 'convention/home'

  get 'convention/register'

  get 'convention/agenda_one'

  get 'convention/agenda_two'

  get 'convention/agenda_three'  

  get 'convention/winner'

  get 'convention/faq'

  get 'convention/sponsors'
  
  get  'convention/choreo_full'

  get 'pages/faq'

  get 'pages/congratulations'

  get 'pages/vote_counted'

  get 'tables/congrats'


  resources :tables
  

  root to: 'convention#home'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


