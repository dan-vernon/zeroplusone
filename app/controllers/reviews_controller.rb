class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params([:user_id]))
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      redirect_to reviews_index_path(@user)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :ratings, :booking_id, :user_id)
  end
end
