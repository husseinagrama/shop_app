class OrdersController < ApplicationController
  def create
    @item = Item.find_by(id: params[:form_item_id])
    quantity = params[:form_quantity]
    subtotal = @item.price * quantity.to_i
    @tax= subtotal * 0.09
    @total = subtotal + @tax
    @order = Order.new(
      user_id: current_user.id,
      quantity: quantity,
      item_id: params[:form_item_id],
      subtotal: subtotal,
      tax: @tax,
      total: @total
      )
    @order.save
    redirect_to "/orders/#{@order.id}"
  end
  def show
    @order = Order.find_by(id: params[:id])
  end
end
