class ReviewsController < ApplicationController
  #before

  def new
    #find_restaurant
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    #find_restaurant
    @review = Review.new(review_params)

    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save

    if @review.save
      redirect_to restaurant_path(Restaurant.find(params[:restaurant_id]))
    else
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


end

