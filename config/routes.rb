Rails.application.routes.draw do
  resources :notes
  resources :lectures
  resources :institutions
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/login", to: 'auth#login'
  

end
