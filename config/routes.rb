Rails.application.routes.draw do
  resources :signatories

  resources :cities
  resources :barangays
  resources :provinces
  resources :regions
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
