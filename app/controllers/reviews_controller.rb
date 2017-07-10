class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:id])
    @review = current_user.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = current_user.reviews.new(review_params)
    @review.product_id = @product.id
    if @review.save
      redirect_to product_path(@product)
    else
      render :_new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :product_id)
  end
end
