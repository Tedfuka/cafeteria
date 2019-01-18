class UsersController < ApplicationController
  def show
    @products = Product.where(user_id: current_user.id)
    @reviews = @products.reviews
  end
end
