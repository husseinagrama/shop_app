class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      item_id: params[:form_item_id],
      quantity: params[:form_quantity],
      status: "carted"

      )
    carted_product.save
    redirect_to "/carted_products"
  end
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    if @carted_products.length > 0
      render "index.html.erb"
    else
      flash[:warning] = "You have no items in your cart. Please buy something!"

    end
    def destroy
      carted_product = CartedProduct.find_by[id: params[:id]]
      carted_product.status = "removed"
      carted_product.save
      flash[:success] = "Product Removed!"
    end
  end

end
