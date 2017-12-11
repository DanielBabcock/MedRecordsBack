Rails.application.routes.draw do
  resources :family_histories
  resources :surgical_procedures
  resources :major_illnesses
  resources :medications
  resources :vaccinations
  resources :patient_infos
  resources :items
  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


