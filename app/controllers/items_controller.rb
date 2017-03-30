class ItemsController < ApplicationController
  def index
    
    #@items = Item.all.order(params [:sort_by] => params [:sort_order])
    #sort_attribute = params[:sort_by] || "brand"
    #sort_attribute_order = params[:sort_order] || "asc"

    sort_attribute = params[:sort_by]
    discount = params[:discount]
    
    if sort_attribute
      @items = Item.all.order(sort_attribute)
    elsif discount
      @items = Item.where("price < ?", 300)
      #elsif params[:form_name]
      #@products = Product.where("name LIKE ?"), params[:form_name]
    elsif params[:category]
      category = Category.find_by(name: params[:category])
      @items = category.items
    else
      @items = Item.all
    end
    

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
    if params[:id] == "random"
      @item = Item.all.sample
    else
      @item = Item.find_by(id: item_id)
    end
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
  #def search
  # @products = Product.where("name LIKE ?"), params[:form_name]
  #end
end

