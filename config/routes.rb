Rails.application.routes.draw do
  resources :newsletters
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "events/location/:id", to: "events#show_by_location", as: "locations"  
end
