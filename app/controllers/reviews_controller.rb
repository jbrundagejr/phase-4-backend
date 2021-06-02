class ReviewsController < ApplicationController
   
    before_action :logged_in?

    def index
        reviews = Review.all
        render json: reviews
    end

    def create
        review = @user.reviews.create(review_params)
        render json: review
    end

    def destroy
        review = @user.reviews.find(params[:id])
        render json: review
        review.destroy
    end

    private

    def review_params
        params.permit(:title, :content, :rating, :user_id, :vinyl_id)
    end
end
