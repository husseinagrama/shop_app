class ItemsController < ApplicationController
  def show_items_method
    @items = Item.all
    render "show_items.html.erb"
  end
end
