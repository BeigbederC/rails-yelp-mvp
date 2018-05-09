class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to(@restaurant)
      else
        render :new
      end

    #if sur save et rendre la vue new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :phone, :address, :category)
  end

  # def review
  # end
end

