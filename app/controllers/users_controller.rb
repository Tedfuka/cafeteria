class UsersController < ApplicationController
  def show
     @products = current_user.reviewed_products.uniq
     @reviews = current_user.reviews
  end
end
