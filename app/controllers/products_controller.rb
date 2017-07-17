class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @products.each do |product|
    #   product.avg_rating = Product.get_avg_rating(product)
    #   product.save
    # end
  end

  def new
    @product = current_user.products.new
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to user_product_path(current_user, @product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    # @product.avg_rating = Product.get_avg_rating(@product)
    @product.save
    @reviews = @product.reviews
    if current_user
      @review = current_user.reviews.new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else 
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product has been deleted."
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :user_id)
  end
end
