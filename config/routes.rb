Rails.application.routes.draw do


  get 'eat_queue/new'

  get 'queue/new'

  get '/about', to: 'static_pages#about'
  root 'static_pages#home', as: 'home'

  # Initialize Resources
  resources :restaurants

  # Matchmaking Queue
  get '/eat', to: 'queue#new'
  post '/eat', to: 'queue#create'
  get '/cancel', to: 'queue#destroy'

  #devise_for :users
  devise_for :users #, controllers: { registrations: "registrations" }
  devise_scope :user do
    root to: "devise/registrations#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
end
#http://www.peoplecancode.com/tutorials/how-to-manage-users-with-devise-ruby-on-rails
