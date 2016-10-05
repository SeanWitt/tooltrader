class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
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
