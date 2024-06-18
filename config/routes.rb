# # config/routes.rb

# Rails.application.routes.draw do

#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"

#   resources :quotes
# end






# config/routes.rb

Rails.application.routes.draw do
  devise_for :users
  # root 'quotes#index'
  root to: "pages#home"
  resources :quotes do
    resources :line_item_dates, except: [:index, :show] do
      resources :line_items, except: [:index, :show]
    end
  end
end




# 2. Ensure you have defined root_url to *something* in your config/routes.rb.
# For example:

#   root to: "home#index"

# * Not required for API-only Applications *