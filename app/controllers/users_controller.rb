class UsersController < ApplicationController
  def show
     @products = Product.all #where(user_id: current_user.id) 管理者のみ商品登録
     #@reviews = Review.where(user_id: current_user.id)
  end
end
