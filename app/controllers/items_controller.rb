class ItemsController < ApplicationController
  def index
    @items = Item.all
    render "index.html.erb"
  end
  def new
    render "new.html.erb"
  end
  
  def create
    item = Item.new(
        brand: params[:brand],
        model: params[:model],
        price: params[:price],
        description: params[:description]
      )
    item.save
    render "create.html.erb"
  end

  def show
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
    render "show.html.erb"
  end
  def edit
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
    render "edit.html.erb"
  end
  def update
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
    @item.brand = params[:brand]
    @item.model = params[:model]
    @item.price = params[:price]
    @item.description = params[:description]
    @item.save
    render "update.html.erb"
  end
  def destroy
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
    @item.destroy
    render "delete.html.erb"
  end
end

