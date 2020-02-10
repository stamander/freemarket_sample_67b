class ExhibitionsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]


  def update
    if @item.update(item_params)
      redirect_to root_path
    else 
      render :edit
    end
  end
  
  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to new_exhibition_url
    end
    
  end

private
  def item_params
    params.require(:item).permit(:name,:price,:SaleStatu,:category_id,:explain,:postage,:brand_id,:region,:shipping_date,:size,:way_of_delivery,:quality,images_attributes:[:image1, :image2,:image3,:image4,:_destroy, :id])

  end

  def set_item
    @item = Item.find(params[:id])
  end
end
