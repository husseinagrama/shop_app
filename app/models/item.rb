class Item < ApplicationRecord
  belongs_to :supplier
  #def supplier
   # Supplier.find_by(id: self.supplier_id)
  #end
  has_many :images
  def sale_message
    
    #if price.to_i < 200
     # return "Discount item!"
    #else
      #return "special Everyday price!"
    #end
    
  end 

  def tax
    return price.to_f * 0.09
  end
  
  def total
    return price.to_f + tax
  end
  #def price_class_method
   # if sale_message == "Discount item!"
     # return "discount-item"
  #end
  def discounted?
    return price.to_f < 200  
  end

  
    
end
