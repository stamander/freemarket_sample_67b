class FadressesController < ApplicationController
  def index
    @address = Fadress.all.where(furimauser_id: current_furimauser.id)
  end

  def new
    @address = Fadress.new
  end

  def create
    Fadress.create(fadress_params)
    redirect_to fprofiles_path
  end

  def edit
    @address = Fadress.find(params[:id])
  end

  def update
    @address = Fadress.find(params[:id])
    @address.update(fadress_params)
    redirect_to fadresses_path
  end

  private

  def fadress_params
    params.require(:fadress).permit(:post_number, :prefecture, :city, :town, :building)
  end
end
