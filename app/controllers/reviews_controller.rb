class ReviewsController < ApplicationController

before_action :authenticate_user!, :except => [:index]

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    review = Review.create(create_params)
    redirect_to product_path(review.product_id)
  end

  private
  def create_params
    params.require(:review).permit(:comment, :rate,).merge(product_id: params[:product_id],user_id: current_user.id)
  end
end
