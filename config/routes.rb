Rails.application.routes.draw do
  #devise_for :users
  devise_for :users#, controllers: { registrations: "registrations" }
#root 'static_pages#home'
#root :to => redirect("/users/edit") #tentative fix. idk what to do

#this does the same as line 5, but instead of redirect,
#it literally changes the localhost:3000.
devise_scope :user do
  root to: "devise/registrations#edit"
end

end




#http://www.peoplecancode.com/tutorials/how-to-manage-users-with-devise-ruby-on-rails
