class HandmadeController < ApplicationController
  def index
    @handmade=Item.all.where(category_id: "10").order(id: :desc).includes(:images)
  end
end
