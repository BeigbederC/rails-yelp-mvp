Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

end

# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"

# Prefix  Verb  URI Pattern                              Controller#Action
# new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
#    restaurant_reviews  POST  /restaurants/:restaurant_id/reviews      reviews#create
