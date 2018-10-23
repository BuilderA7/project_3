Rails.application.routes.draw do
    # get 'admins/new'
    # get 'admins/create'
 # root to: 'instructors/sign_in'
authenticated :admin do 
  devise_for :admins
   resources :admins, module: "admin" do
    member do
      patch :publish
      patch :unpublish
    end
   end
  end
  devise_for :instructors
   resources :instructors
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html