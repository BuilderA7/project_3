Rails.application.routes.draw do
    # get 'admins/new'
    # get 'admins/create'
 # root to: 'devise/sessions#new'
  devise_for :instructors
   resources :instructors
  devise_for :admins
   resources :admins
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
