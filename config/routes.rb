Rails.application.routes.draw do
  resources :pupil_measurements
  resources :pupils
  resources :schools
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
