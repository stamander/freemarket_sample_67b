class DetailController < ApplicationController
  def index
    
  end

  def  destroy
    @detail.destroy
    redirect_to root_path
  end

  # def destroy
  #   if @item.user_id == current_user.id
  #     @item.destroy
  #     redirect_to users_path
  #   else
  #     render :show,notice: '削除出来ませんでした'
  #   end
  # end

  def update
    if @detail.update(detail_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
  end
end
