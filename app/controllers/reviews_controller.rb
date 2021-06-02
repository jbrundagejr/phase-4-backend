class ReviewsController < ApplicationController

    def create
        review = Review.create(review_params)
        render json: review
    end

    private

    def review_params
        params.permit(:title, :content, :rating, :user_id, :vinyl_id)
    end
end
