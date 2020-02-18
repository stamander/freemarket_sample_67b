class WomanController < ApplicationController
  def index
    @woman=Item.all.where(category_id: "1").order(id: :desc).includes(:images)
  end
end
