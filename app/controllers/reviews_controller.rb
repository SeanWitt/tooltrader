class ReviewsController < ApplicationController

  def new
    @recipient = params[:user_id]
    @review = Review.new

  end

  def create
    p params
    p " _______________________"
    @review = Review.create(review: params[:review],rating: params[:rating], recipient_id: params[:user_id],  author_id: current_user.id)
    p @review.errors
    redirect_to user_path(current_user)
  end

  def show
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:review, :author_id, :recipient_id, :rating )
  end

end
