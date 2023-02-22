Rails.application.routes.draw do
 
  resources :temples do 

    resources :visitors
    resources :bookings
  end
end
