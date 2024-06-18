Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "home#index"

  get "/home", to: "home#index"

  get "/register", to: "home#register"
  post "/form", to: "home#form"

  get "/admin_login", to: "home#admin_login"
  post "/admin", to: "home#admin" 
  get "/admin_dashboard", to: "home#admin_dashboard"
  get "/myjobs", to: "home#myjobs"

  get "/records", to: "home#records"
  get "/approve/:id", to: "home#approve", as: :approve_record
  get "/reject/:id", to: "home#reject"

  get "/approved", to: "home#approved"
  get "/delete/:id", to: "home#delete"

  get "/job", to: "home#job"
  post "/create_job", to: "home#create_job"
  get "/available_jobs", to: "home#available_jobs"

  

  # Defines the root path route ("/")
  # root "posts#index"
end
