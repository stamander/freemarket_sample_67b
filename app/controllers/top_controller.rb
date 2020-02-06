class TopController < ApplicationController
  
  def index
    @item = Item.all.where(SaleStatu: "販売中").order(id: :desc).includes(:images)
    @categoryitem = Item.all.where(SaleStatu: "販売中").where(category_id: "1").order(id: :desc)
    @image = Image.all.order(id: :desc).limit 3
  end

end
