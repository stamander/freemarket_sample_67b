class AccountProfilesController < ApplicationController
  def index
    @profile = AccountProfile.all
  end

  def new
    @profile = AccountProfile.new
  end

  def create
    AccountProfile.create(accountProfile_params)
    if AccountProfile.save
      redirect_to root_path
    end
  end

  def edit
    @profile = AccountProfile.find(params[:id])
  end

private

  def accountProfile_params
    params.require(:account_profile).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :phone_number)
  end
end
