Rails.application.routes.draw do
# root 'homes#index'
  resources :meditations
  resources :homes
# authenticated :admin do 
#   resources :admins, module: "admin" do
#     member do
#       patch :publish
#       patch :unpublish
#     end
#   end
# end
  devise_for :admins
  devise_for :instructors, controllers: {
        sessions: 'instructors/sessions',
        registrations: 'instructors/registrations',
        passwords: 'instructors/passwords',
        confirmations: 'instructors/confirmations',
        mailer: 'instructors/mailer',
        unlocks: 'instructors/unlocks',
      }
   resources :instructors do
    resources :students
   end
   devise_scope :instructors do
    root to: "homes#index"
  end
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html