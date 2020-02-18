class FprofilesController < ApplicationController
  def index
    @profile = Fprofile.all.order(furimauser_id: :asc)
  end

  def new
    @profile = Fprofile.new
  end

  def create
    Fprofile.create(fprofile_params)
    redirect_to fprofiles_path
  end

  def edit
    @profile = Fprofile.find(params[:id])
  end

  def update
    @profile = Fprofile.find(params[:id])
    @profile.update(fprofile_params)
    redirect_to fprofiles_path
  end

  private
  def fprofile_params
    params.require(:fprofile).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :phone_number)
  end
end
