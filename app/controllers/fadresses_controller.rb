class FadressesController < ApplicationController
  def index
    @adress = Fadress.all
  end

  def new
    @adress = Fadress.new
  end

  def create
    Fadress.create(fadress_params)
    redirect_to fprofiles_path
  end

  def edit
    @adress = Fadress.find(params[:id])
  end

  def update
    @adress = Fadress.find(params[:id])
    @adress.update(fadress_params)
    redirect_to fadresses_path
  end

  private

  def fadress_params
    params.require(:fadress).permit(:post_number, :prefecture, :city, :town, :building)
  end
end
