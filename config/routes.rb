Rails.application.routes.draw do
   resources :activities do
 
  resources :childenrolls 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
