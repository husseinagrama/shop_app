class OrdersController < ApplicationController
  def create
    @carted_products = current_user.carted_products.where(status: "carted")
    order_subtotal = 0
    @carted_products.each do |carted_product|
      order_subtotal += carted_product.quantity * carted_product.item.price
    end
  
    
    order_tax= order_subtotal * 0.09
    order_total = order_subtotal + order_tax
    @order = Order.new(
      user_id: current_user.id,
      subtotal: order_subtotal,
      tax: order_tax,
      total: order_total
      )
    order.save
    #@carted_products.each do |carted_product|
    carted_products.update_all(order_id: order_id, status: "purchased")
    carted_products.save

    redirect_to "/orders/#{@order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
