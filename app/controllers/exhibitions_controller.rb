class ExhibitionsController < ApplicationController


  def update
    if @item.update(item_params)
      redirect_to root_path
    else 
      render :edit
    end
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to new_exhibition_path
    end
  end

  def show
    redirect_to new_furimauser_session_path unless furimauser_signed_in?
    @item = Item.find(params[:id])
    @user = Furimauser.find(@item.furimauser_id)


  end

  def destroy
    if @image.destroy
    redirect_to root_path
    else
      redirect_to exhibition_path(item)
    end
  end

private

  def item_params
    params.require(:item).permit(:name,:price,:SaleStatu,:category_id,:explain,:postage_id,:region_id,:brand_id,:shipping_date_id,:size,:way_of_delivery_id,:quality_id,images_attributes:[:image1,:_destroy, :id]).merge(furimauser_id: current_furimauser.id)
  end

end



