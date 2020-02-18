class BuycicleController < ApplicationController
  def index
    @buycicle=Item.all.where(category_id: "13").order(id: :desc).includes(:images)
  end
end
