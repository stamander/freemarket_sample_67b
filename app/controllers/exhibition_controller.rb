class ExhibitionController < ApplicationController

  def index
    @item = Item.all
  end 

  def new
    @item = Item.new(item_params)
    @item.images.new
  end

  def create

    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to new_item_path
    end
  end

private
  def item_params
    params.require(:item).permit(:name,:price,:category_id,:explain,:postage,:brand_id,:region, :shipping_date,:size,:way_of_delivery,:quality,:image, images_attributes: [:image, :_destroy, :id])

  end
end
