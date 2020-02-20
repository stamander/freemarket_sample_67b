class TopController < ApplicationController
  
  def index
    @item = Item.all.order(id: :desc).includes(:images)
    @categoryitem = Item.all.where(category_id: "1").order(id: :desc)
    @image = Image.all.order(id: :desc).limit 3
    @address = Fadress.all
    @profile = Fprofile.all
  end

end
