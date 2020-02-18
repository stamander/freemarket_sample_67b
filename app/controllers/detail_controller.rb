class DetailController < ApplicationController

  before_action :set_item

  def index
        redirect_to new_furimauser_session_path unless furimauser_signed_in?

  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to root_path ,notice: '商品を編集しました'
  end

  def destroy
    if current_furimauser.id == @item.furimauser_id
      @item.destroy
      redirect_to "/"
    else
      redirect_to  detail_index_path
    end
  end

  private

  def set_item
    @item = Item.find(5)
  end

  def item_params
    params.require(:item).permit(:name,:price,:SaleStatu,:category_id,:explain,:postage,:region,:brand_id,:shipping_date,:size,:way_of_delivery,:quality,images_attributes:[:image1,:_destroy, :id]).merge(furimauser_id: current_furimauser.id)
  end

end