class ReviewsController < ApplicationController
  layout false
  protect_from_forgery with: :null_session
  # POST /api/v1/reviews
  def create
    review = Review.new(review_params)
    if review.save
      render json: ReviewSerializer.new(review).serialized_json
    else
      render json: { error: review.errors.messages }, status: 422
    end

  end

  def destroy
    review = Review.find_by(id: params[:id])
    if review&.destroy
      head :no_content
    else
      render json: errors, status: 422
    end
  end

  private

  def review_params
    params.permit(:title, :description, :score, :movie_id)
  end

  def errors
    { errors: "Review doesn't exists" }
  end
end