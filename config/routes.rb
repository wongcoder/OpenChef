Rails.application.routes.draw do

  get 'restaurants/new'

  get 'static_pages/home'

  get 'static_pages/accounts'

  get 'static_pages/restaurants'

  get 'static_pages/eat'

  get 'static_pages/about'

  root 'static_pages#home'

  resources :restaurant

#devise_for :users
  devise_for :users #, controllers: { registrations: "registrations" }
  devise_scope :user do
    root to: "devise/registrations#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
end
#http://www.peoplecancode.com/tutorials/how-to-manage-users-with-devise-ruby-on-rails
