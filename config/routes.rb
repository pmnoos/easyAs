Rails.application.routes.draw do
  resources :contacts
  devise_for :users, controllers: {
    sessions: 'devise/sessions'
  }

 

  # Defines the root path route ("/")
  root "pages#home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact_us" 
  get "/users", to: "users#sign_out"
end
