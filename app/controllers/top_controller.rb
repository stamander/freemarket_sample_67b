class TopController < ApplicationController
  
  def index
    @item = Item.all.order(id: :desc).includes(:images)
    @categoryitem = Item.all.where(category_id: "1").order(id: :desc)
    @image = Image.all.order(id: :desc).limit 3
    if furimauser_signed_in?
      @address = Fadress.all.where(furimauser_id: current_furimauser.id)
      @profile = Fprofile.all.where(furimauser_id: current_furimauser.id)
    end
  end

end
