Rails.application.routes.draw do
  resources :meditations
 # root to: "homes#index"
  resources :homes
authenticated :admin do 
  resources :admins, module: "admin" do
    member do
      patch :publish
      patch :unpublish
    end
  end
end
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
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html