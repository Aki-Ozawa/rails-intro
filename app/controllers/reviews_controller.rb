class ReviewsController < ApplicationController

    def create
        @restaurant = Restaurant.find(params[restaurant_id])
        @review = @restaurant.reviews.new(review_params)
        if @review.save
            redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
        else
            puts review.error.full_message
            redirect_to restaurant_path
        end 
    end 

    private
    
    def review_params
        params.require(:review).permit(:rating, :comment)
      end
end
