class ProductsController < ApplicationController

# before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def new
    @product = Product.new #予め定義されているnewメソッド
  end

  def create
    product = Product.create(product_params)
    redirect_to products_path #rake routesで確認、prefixに_pathをつける
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy #予め定義されているdestroyメソッド
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
  end

  private

  def product_params
      params.require(:product).permit(:name, :recommendation, :price, :avatar).merge(user_id: current_user.id)
  end

end
