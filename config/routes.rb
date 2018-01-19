Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/accounts'

  get 'static_pages/restaurants'

  get 'static_pages/eat'

  root 'application#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
